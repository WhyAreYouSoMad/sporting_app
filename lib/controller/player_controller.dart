import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/core/constants/my_routes.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/player/player_repository.dart';
import 'package:sporting_app/model/user/user.dart';
import 'package:sporting_app/provider/session_provider.dart';
import 'package:sporting_app/view/pages/player/player_info_update/player_info_update_page_view_model.dart';

final playerControllerProvider = Provider<PlayerController>((ref) {
  return PlayerController(ref);
});

class PlayerController {
  // Repository, ViewModel 의존
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  PlayerController(this.ref);

  Future<void> getPlayerDetail() async {
    String jwt = ref.read(sessionProvider).jwt!;
    ResponseDTO responseDTO = await PlayerRepository().fetchPlayerDetail(jwt);
    if (responseDTO.status == 200) {
      User playerDTO = responseDTO.data;
      ref.read(playerInfoUpdatePageProvider.notifier).notifyInit(playerDTO);
      Navigator.pushNamed(mContext!, MyRoute.playerInfoUpdatePage);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(const SnackBar(content: Text("접근 실패")));
    }
  }
}