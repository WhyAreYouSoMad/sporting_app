import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/stadium/stadium.dart';
import 'package:sporting_app/model/stadium/stadium_repository.dart';
import 'package:sporting_app/provider/session_provider.dart';
import 'package:sporting_app/view/pages/stadium/stadium_list/stadium_list_page.dart';
import 'package:sporting_app/view/pages/stadium/stadium_list/stadium_list_page_view_model.dart';

final stadiumControllerProvider = Provider<StadiumController>((ref) {
  return StadiumController(ref);
});

class StadiumController {
  // Repository, ViewModel 의존
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  StadiumController(this.ref);

  Future<void> getStadiumList(String keyword) async {
    String jwt = ref.read(sessionProvider).jwt!;
    ResponseDTO responseDTO =
        await StadiumRepository().fetchStadiumList(jwt, keyword);
    Logger().d(responseDTO.data);
    List<Stadium> stadiumListDTO = responseDTO.data;
    ref.read(stadiumListPageProvider.notifier).notifyInit(stadiumListDTO);
    Navigator.push(
      mContext!,
      MaterialPageRoute(
        builder: (context) => StadiumListPage(sportName: keyword),
      ),
    );
  }

  Future<void> saveStadium(String name, String address, String category) async {
    Logger().d("saveStadium 메소드 호출 됨");
    Logger().d(name);
    Logger().d(address);
    Logger().d(category);
  }
}
