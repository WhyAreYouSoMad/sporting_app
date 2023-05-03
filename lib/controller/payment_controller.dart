import 'package:bootpay/model/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/court/court.dart';
import 'package:sporting_app/model/player/player_repository.dart';
import 'package:sporting_app/provider/session_provider.dart';
import 'package:sporting_app/view/pages/bootpay/total_payment.dart';

final paymentControllerProvider = Provider<PaymentController>((ref) {
  return PaymentController(ref);
});

class PaymentController {
  // 현재 페이지 context 불러오기
  final mContext = navigatorKey.currentContext;

  // ref DI
  final Ref ref;

  PaymentController(this.ref);

  // 결제 페이지 불러오기
  Future<void> getTotalPayment(Court court) async {
    Logger().d("getPlayerDetail 메소드 호출됨");

    // 받아온 예약할 객체 담기
    Item item = Item();
    item.name = court.title; // 주문정보에 담길 상품명
    item.qty = 1; // 해당 상품의 주문 수량
    item.id = court.id.toString(); // 해당 상품의 고유 키
    item.price = court.price.toDouble(); // 상품의 가격

    // 세션에 담긴 jwt 토큰 가져오기
    String jwt = ref.read(sessionProvider).jwt!;

    // Repository 메소드 호출
    ResponseDTO responseDTO = await PlayerRepository().fetchPlayerDetail(jwt);

    // 통신 상태 값이 200일 경우
    if (responseDTO.status == 200) {
      // 결제 페이지로 이동
      TotalPayment totalPayment = TotalPayment(
        item: item,
        user: responseDTO.data,
        jwt: jwt,
        courtId: court.id,
      );
      totalPayment.bootpayTest(mContext!);
    } else {
      // 실패 시 스낵바
      ScaffoldMessenger.of(mContext!)
          .showSnackBar(const SnackBar(content: Text("결제 페이지 로드 실패")));
    }
  }
}
