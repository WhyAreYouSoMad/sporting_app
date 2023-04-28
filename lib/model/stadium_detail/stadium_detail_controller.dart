import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/stadium_detail/stadium_detail.dart';
import 'package:sporting_app/model/stadium_detail/stadium_detail_repository.dart';
import 'package:sporting_app/provider/session_provider.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/stadium_detail_page.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/stadium_detail_page_view_model.dart';

final stadiumDetailControllerProvider = Provider<StadiumDetailController>((ref) {
  return StadiumDetailController(ref);
});

class StadiumDetailController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  StadiumDetailController(this.ref);

  Future<void> getStadiumDetail(int stadiumId) async {
    Logger().d("getStadiumDetail 메소드 호출됨");
    String jwt = ref.read(sessionProvider).jwt!;
    ResponseDTO responseDTO = await StadiumDetailRepository().fetchStadiumDetail(jwt, stadiumId);
    Logger().d(responseDTO.status);
    if(responseDTO.status == 200) {
      StadiumDetail st = responseDTO.data;
      // Logger().d(st.);
      ref.read(stadiumDetailPageProvider.notifier).readInit(responseDTO.data);
      Navigator.push(mContext!, MaterialPageRoute(builder: (_) => StadiumDetailPage()));
    } else {
      Navigator.of(mContext!).pop();
    }
  }
}