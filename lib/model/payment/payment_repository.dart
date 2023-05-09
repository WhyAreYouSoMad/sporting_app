import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';

class PaymentRepository {

  // 싱글톤
  static final PaymentRepository _instance = PaymentRepository._single();
  factory PaymentRepository() {
    return _instance;
  }
  PaymentRepository._single();

  // 기업 회원 정보 불러오기
  void fetchPaymentResult(String jwt, String data, int courtId) async {
    Logger().d("fetchPaymentResult 메소드 호출됨");

    // 서버와 통신
    Response response = await dio.post("/api/user/payments?courtId=$courtId&resDate=20230505&resTime=6",
        options: Options(headers: {"Authorization": "$jwt"}),
    data: data);

    Logger().d(response.data);
  }

}