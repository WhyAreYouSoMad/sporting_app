import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/company/my_company_stadium_update/my_company_stadium_update.dart';
import 'package:sporting_app/model/company/my_company_stadium_update/my_company_stadium_update_repository.dart';
import 'package:sporting_app/model/stadium_detail/stadium_detail.dart';
import 'package:sporting_app/model/stadium_detail/stadium_detail_repository.dart';
import 'package:sporting_app/provider/session_provider.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/company_stadium_detail_page.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/company_stadium_detail_page_view_model.dart';
import 'package:sporting_app/view/pages/company/company_stadium_list/company_stadium_list_page.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/stadium_detail_page.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/stadium_detail_page_view_model.dart';

final MyCompanyStadiumUpdateControllerProvider = Provider<MyCompanyStadiumUpdateController>((ref) {
  return MyCompanyStadiumUpdateController(ref);
});

class MyCompanyStadiumUpdateController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  MyCompanyStadiumUpdateController(this.ref);

  Future<void> getStadiumUpdate(int stadiumId) async {
    Logger().d("getStadiumUpdate 메소드 호출됨 : $stadiumId");
    String jwt = ref.read(sessionProvider).jwt!;

    ResponseDTO responseDTO = await MyCompanyStadiumUpdateRepository().fetchStadiumUpdage(jwt, stadiumId);
    Logger().d("컴퍼티스타이움 컨트롤러", responseDTO.data);
    Logger().d(responseDTO.msg);
    if(responseDTO.status == 200) {
      ref.read(companyStadiumDetailPageProvider.notifier).notifyInit(responseDTO.data);
      Navigator.push(mContext!, MaterialPageRoute(builder: (_) => CompanyStadiumDetailPage()));
    } else {
      Navigator.of(mContext!).pop();
    }

    Logger().d("여기 1 : " , responseDTO.status);
    // Logger().d("여기 2 : ", responseDTO.data);
    // Logger().d("여기 3 : ", responseDTO.token);

  }
}