import 'package:bootpay/bootpay.dart';
import 'package:bootpay/model/item.dart';
import 'package:bootpay/model/payload.dart';
import 'package:bootpay/model/user.dart' as boot;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sporting_app/model/payment/payment_repository.dart';
import 'package:sporting_app/model/user/user.dart' as my;

class TotalPayment extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.

  String webApplicationId = '643f9df8755e27001ae57d09';

  String androidApplicationId = '643f9df8755e27001ae57d0a';

  String iosApplicationId = '643f9df8755e27001ae57d0b';

  Item item;

  my.User user;

  String jwt;

  int courtId;

  TotalPayment({
    super.key,
    required this.item,
    required this.user,
    required this.jwt,
    required this.courtId,
  });

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: TextButton(
                    onPressed: () => bootpayTest(context),
                    child: const Text('통합결제 테스트',
                        style: TextStyle(fontSize: 16.0))))));
  }

  void bootpayTest(BuildContext context) {
    Payload payload = getPayload();
    if (kIsWeb) {
      payload.extra?.openType = "iframe";
    }

    Bootpay().requestPayment(
      context: context,
      payload: payload,
      showCloseButton: false,
      // closeButton: Icon(Icons.close, size: 35.0, color: Colors.black54),
      onCancel: (String data) {
        PaymentRepository().fetchPaymentResult(jwt, data, courtId);
        print('------- onCancel: $data');
      },
      onError: (String data) {
        PaymentRepository().fetchPaymentResult(jwt, data, courtId);
        print('------- onError: $data');
      },
      onClose: () {
        print('------- onClose');
        Bootpay().dismiss(context); //명시적으로 부트페이 뷰 종료 호출
        //TODO - 원하시는 라우터로 페이지 이동
      },
      onIssued: (String data) {
        PaymentRepository().fetchPaymentResult(jwt, data, courtId);
        print('------- onIssued: $data');
      },
      onConfirm: (String data) {
        PaymentRepository().fetchPaymentResult(jwt, data, courtId);
        print('------- onConfirm: $data');
        /**
            1. 바로 승인하고자 할 때
            return true;
         **/
        /***
            2. 비동기 승인 하고자 할 때
            checkQtyFromServer(data);
            return false;
         ***/
        /***
            3. 서버승인을 하고자 하실 때 (클라이언트 승인 X)
            return false; 후에 서버에서 결제승인 수행
         */
        // checkQtyFromServer(data);
        return true;
      },
      onDone: (String data) {
        PaymentRepository().fetchPaymentResult(jwt, data, courtId);
        print('------- onDone: $data');
      },
    );
  }

  Payload getPayload() {
    Payload payload = Payload();
    List<Item> itemList = [item];

    payload.webApplicationId = webApplicationId; // web application id
    payload.androidApplicationId =
        androidApplicationId; // android application id
    payload.iosApplicationId = iosApplicationId; // ios application id

    payload.pg = '나이스페이';
    payload.orderName = item.name; //결제할 상품명
    payload.price = item.price; //정기결제시 0 혹은 주석

    payload.orderId = DateTime.now()
        .millisecondsSinceEpoch
        .toString(); //주문번호, 개발사에서 고유값으로 지정해야함

    payload.items = itemList; // 상품정보 배열

    boot.User user = boot.User(); // 구매자 정보
    user.id = this.user.id.toString();
    user.username = this.user.nickname;
    user.email = this.user.email;
    user.phone = this.user.playerInfo!.tel;
    user.addr = this.user.playerInfo!.address;

    payload.user = user;
    return payload;
  }
}
