import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/my_stadiums/my_stadiums.dart';
import 'package:sporting_app/model/my_stadiums/my_stadiums_repository.dart';
import 'package:sporting_app/provider/session_provider.dart';
import 'package:sporting_app/view/pages/company/company_stadium_list/company_stadium_list_page.dart';
import 'package:sporting_app/view/pages/company/company_stadium_list/company_stadium_list_page_view_model.dart';

final myStadiumListControllerProvider =
    Provider<MyStadiumListController>((ref) {
  return MyStadiumListController(ref);
});

class MyStadiumListController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  MyStadiumListController(this.ref);

  Future<void> getMyStadiumListController() async {
    String jwt = ref.read(sessionProvider).jwt!;
    
    ResponseDTO responseDTO =
        await MyStadiumsRepository().fetchMyStadiums(jwt);
    
    List<MyStadiums> MyStadiumsDTO = responseDTO.data;

    if (responseDTO.status == 200) {
      ref
          .read(companyStadiumListPageProvider.notifier)
          .notifyInit(MyStadiumsDTO);
      Navigator.push(
          mContext!,
          MaterialPageRoute(
              builder: (context) => CompanyStadiumListPage()));
    }
  }
}
