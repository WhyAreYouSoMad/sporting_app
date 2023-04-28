
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_routes.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/company/company_repository.dart';
import 'package:sporting_app/model/user/user.dart';
import 'package:sporting_app/provider/session_provider.dart';
import 'package:sporting_app/view/pages/company/company_info_update/company_info_update_page_view_model.dart';

final companyControllerProvider = Provider<CompanyController>((ref) {
  return CompanyController(ref);
});

class CompanyController {
  // Repository, ViewModel 의존
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  CompanyController(this.ref);

  Future<void> getCompanyDetail() async {
    Logger().d("Conroller getCompanyDetail 메소드 호출됨");
    String jwt = ref.read(sessionProvider).jwt!;
    ResponseDTO responseDTO = await CompanyRepository().fetchCompanyDetail(jwt);
    Logger().d(responseDTO.status);
    if (responseDTO.status == 200) {
      User companyDTO = responseDTO.data;
      ref.read(companyInfoUpdatePageProvider.notifier).notifyInit(companyDTO);
      Navigator.pushNamed(mContext!, MyRoute.companyInfoUpdatePage);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(const SnackBar(content: Text("접근 실패")));
    }
  }
}