import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/stadium/stadium_request.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/auth/auth_user.dart';
import 'package:sporting_app/model/stadium/stadium_company_update/stadium_comapny_update.dart';
import 'package:sporting_app/model/stadium/stadium_company_update/stadium_company_courts.dart';
import 'package:sporting_app/model/stadium/stadium_company_update/stadium_company_source_file.dart';
import 'package:sporting_app/model/stadium/stadium_repository.dart';
import 'package:sporting_app/provider/session_provider.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/company_stadium_detail_page.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/company_stadium_detail_page_view_model.dart';
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
  // 현재 페이지 context 불러오기
  final mContext = navigatorKey.currentContext;

  // ref DI
  final Ref ref;

  StadiumController(this.ref);

  // 경기장 리스트 불러오기
  Future<void> getStadiumList(String keyword) async {
    Logger().d("getStadiumList 메소드 호출 됨");

    // 세션에 담긴 jwt 토큰 가져오기
    String jwt = ref.read(sessionProvider).jwt!;

    // Repository 메소드 호출
    ResponseDTO responseDTO =
        await StadiumRepository().fetchStadiumList(jwt, keyword);

    // 통신 상태 값이 200일 경우
    if (responseDTO.status == 200) {
      // ViewModel 메소드 호출
      ref.read(stadiumListPageProvider.notifier).notifyInit(responseDTO.data);

      // 경기장 리스트 페이지로 이동
      Navigator.push(
          mContext!,
          MaterialPageRoute(
              builder: (context) => StadiumListPage(sportName: keyword)));
    } else {
      // 실패 시 스낵바
      ScaffoldMessenger.of(mContext!)
          .showSnackBar(const SnackBar(content: Text("일시적인 오류로 접근이 불가능 합니다")));
    }
  }

  // 경기장 상세 불러오기
  Future<void> getStadiumDetail(int stadiumId) async {
    Logger().d("getStadiumDetail 메소드 호출됨");

    // 세션에 담긴 jwt 토큰 가져오기
    String jwt = ref.read(sessionProvider).jwt!;

    // Repository 메소드 호출
    ResponseDTO responseDTO =
        await StadiumRepository().fetchStadiumDetail(jwt, stadiumId);

    // 통신 상태 값이 200일 경우
    if (responseDTO.status == 200) {
      // ViewModel 메소드 호출
      ref.read(stadiumDetailPageProvider.notifier).notifyInit(responseDTO.data);

      // 경기장 상세 페이지로 이동
      Navigator.push(
          mContext!, MaterialPageRoute(builder: (_) => StadiumDetailPage()));
    } else {
      // 실패 시 스낵바
      ScaffoldMessenger.of(mContext!)
          .showSnackBar(SnackBar(content: Text("일시적인 오류로 접근이 불가능 합니다")));
    }
  }

  // 경기장 저장하기
  Future<void> saveStadium(String name, String address, String category) async {
    Logger().d("saveStadium 메소드 호출 됨");

    // 세션에 담긴 jwt 토큰 가져오기
    String jwt = ref.read(sessionProvider).jwt!;

    // 전달 받은 값 DTO에 담기
    SaveStadiumReqDTO saveStadiumReqDTO =
        SaveStadiumReqDTO(name: name, address: address, category: category);

    // Repository 메소드 호출
    ResponseDTO responseDTO =
        await StadiumRepository().fetchSaveStadium(jwt, saveStadiumReqDTO);

    // 통신 상태 값이 200일 경우
    if (responseDTO.status == 200) {
      // 성공시 뒤 페이지로 이동
      Navigator.pop(mContext!);

      // 성공 스낵바 띄우기
      ScaffoldMessenger.of(mContext!)
          .showSnackBar(SnackBar(content: Text("등록되었습니다.")));
    } else {
      // 실패 시 스낵바
      ScaffoldMessenger.of(mContext!)
          .showSnackBar(SnackBar(content: Text("일시적인 오류로 접근이 불가능 합니다")));
    }
  }

  // 내 경기장 리스트 불러오기
  Future<void> getMyStadiumList() async {
    Logger().d("getMyStadiumList 메소드 호출 됨");

    // 세션에 담긴 jwt 토큰 가져오기
    String jwt = ref.read(sessionProvider).jwt!;

    // Repository 메소드 호출
    ResponseDTO responseDTO = await StadiumRepository().fetchMyStadiumList(jwt);

    // 통신 상태 값이 200일 경우
    if (responseDTO.status == 200) {
      // ViewModel 메소드 호출
      ref
          .read(companyStadiumListPageProvider.notifier)
          .notifyInit(responseDTO.data);

      // 내 경기장 리스트 페이지로 이동
      Navigator.push(
          mContext!,
          MaterialPageRoute(
              builder: (context) => const CompanyStadiumListPage()));
    } else {
      // 실패 시 스낵바
      ScaffoldMessenger.of(mContext!)
          .showSnackBar(const SnackBar(content: Text("일시적인 오류로 접근이 불가능 합니다")));
    }
  }

  // 경기장 상세보기 불러오기
  Future<void> getMyStadiumDetail(int stadiumId) async {
    Logger().d("getMyStadiumDetail 메소드 호출됨");

    // 세션에 담긴 jwt 토큰 가져오기
    String jwt = ref.read(sessionProvider).jwt!;

    // Repository 메소드 호출
    ResponseDTO responseDTO =
        await StadiumRepository().fetchMyStadiumDetail(jwt, stadiumId);

    // 통신 상태 값이 200일 경우
    if (responseDTO.status == 200) {

      // ViewModel 메소드 호출
      ref
          .read(companyStadiumDetailPageProvider.notifier)
          .notifyInit(responseDTO.data);

      // 기업 회원 정보 페이지로 이동
      Navigator.push(mContext!,
          MaterialPageRoute(builder: (_) => CompanyStadiumDetailPage()));
    } else {

      // 실패 시 스낵바
      ScaffoldMessenger.of(mContext!)
          .showSnackBar(SnackBar(content: Text("일시적인 오류로 접근이 불가능 합니다")));
    }
  }


  Future<void> updateStadium(
      String status,
      String startTime,
      String endTime,
      String sport,
      int id,
      String title,
      String content,
      int capacity,
      int courtPrice,
      String address) async {
    Logger().d("update호출?");

    StadiumCompanySourceFile sourceFile = StadiumCompanySourceFile(
        id: id,
        fileBase64: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wB//9k=...");

    List<StadiumCompanyCourts> courts = [
      StadiumCompanyCourts(
          id: id,
          title: title,
          content: content,
          capacity: capacity,
          courtPrice: courtPrice,
          sourceFile: sourceFile)

    ];

    CompanyUpdateStadium companyUpdateStadium = CompanyUpdateStadium(
        id: id,
        address: address,
        status: status,
        startTime: startTime,
        endTime: endTime,
        sport: sport,
        sourceFile: sourceFile,
        courts: courts);

    String jwt = ref.read(sessionProvider).jwt!;

    ResponseDTO responseDTO = await StadiumRepository().fetchCompanyStadiumUpdate(jwt, companyUpdateStadium);

    // if (responseDTO.status == 200) {
    //   ref.read(provider)
    // }

  }
}
