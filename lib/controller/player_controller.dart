import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_routes.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/player/player_repository.dart';
import 'package:sporting_app/provider/session_provider.dart';
import 'package:sporting_app/view/pages/player/player_info_update/player_info_update_page_view_model.dart';

final playerControllerProvider = Provider<PlayerController>((ref) {
  return PlayerController(ref);
});

class PlayerController {
  // 현재 페이지 context 불러오기
  final mContext = navigatorKey.currentContext;

  // ref DI
  final Ref ref;
  PlayerController(this.ref);

  // 일반 회원 정보 불러오기
  Future<void> getPlayerDetail() async {

    Logger().d("getPlayerDetail 메소드 호출됨");

    // 세션에 담긴 jwt 토큰 가져오기
    String jwt = ref.read(sessionProvider).jwt!;

    // Repository 메소드 호출
    ResponseDTO responseDTO = await PlayerRepository().fetchPlayerDetail(jwt);

    // 통신 상태 값이 200일 경우
    if (responseDTO.status == 200) {

      // ViewModel 메소드 호출
      ref.read(playerInfoUpdatePageProvider.notifier).notifyInit(responseDTO.data);

      // 일반 회원 정보 페이지로 이동
      Navigator.pushNamed(mContext!, MyRoute.playerInfoUpdatePage);
    } else {

      // 실패 시 스낵바
      ScaffoldMessenger.of(mContext!).showSnackBar(const SnackBar(content: Text("접근 실패")));
    }
  }
}