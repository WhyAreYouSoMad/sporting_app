import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/stadium/stadium_request.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/stadium/stadium.dart';
import 'package:sporting_app/model/stadium/stadium_repository.dart';
import 'package:sporting_app/provider/session_provider.dart';
import 'package:sporting_app/view/pages/company/company_stadium_list/company_stadium_list_page.dart';
import 'package:sporting_app/view/pages/company/company_stadium_list/company_stadium_list_page_view_model.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/stadium_detail_page.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/stadium_detail_page_view_model.dart';
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
    String jwt = ref.read(sessionProvider).jwt!;
    SaveStadiumReqDTO saveStadiumReqDTO = SaveStadiumReqDTO(name: name, address: address, category: category);
    ResponseDTO responseDTO = await StadiumRepository().fetchSaveStadium(jwt, saveStadiumReqDTO);
    if (responseDTO.status == 200) {
      Navigator.pop(mContext!);
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("등록되었습니다.")));
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("일시적인 오류로 접근이 불가능 합니다")));
    }
  }

  Future<void> getMyStadiumList() async {
    String jwt = ref.read(sessionProvider).jwt!;

    ResponseDTO responseDTO =
    await StadiumRepository().fetchGetMyStadiums(jwt);

    if (responseDTO.status == 200) {
      List<Stadium> myStadiumsDTO = responseDTO.data;

      ref
          .read(companyStadiumListPageProvider.notifier)
          .notifyInit(myStadiumsDTO);
      Navigator.push(
          mContext!,
          MaterialPageRoute(
              builder: (context) => const CompanyStadiumListPage()));
    }
    Logger().d(responseDTO.status);
  }

  Future<void> getStadiumDetail(int stadiumId) async {
    Logger().d("getStadiumDetail 메소드 호출됨");
    String jwt = ref.read(sessionProvider).jwt!;
    ResponseDTO responseDTO = await StadiumRepository().fetchStadiumDetail(jwt, stadiumId);
    Logger().d(responseDTO.status);
    if(responseDTO.status == 200) {
      ref.read(stadiumDetailPageProvider.notifier).readInit(responseDTO.data);
      Navigator.push(mContext!, MaterialPageRoute(builder: (_) => StadiumDetailPage()));
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("일시적인 오류로 접근이 불가능 합니다")));
    }
  }
}
