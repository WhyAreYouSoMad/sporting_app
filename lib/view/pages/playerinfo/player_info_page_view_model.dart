import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/user/player_info.dart';


// 창고 관리자 (Provider)
final playerInfoPageProvider = StateNotifierProvider<PlayerInfoPageViewModel, PlayerInfoPageModel?>((ref) {
  return PlayerInfoPageViewModel(null);
});

// 창고 (Store)
class PlayerInfoPageViewModel extends StateNotifier<PlayerInfoPageModel?>{
  PlayerInfoPageViewModel(super.state);
  void init(PlayerInfo playerInfoDTO) {
    state = PlayerInfoPageModel(playerInfo: playerInfoDTO);
  }
}

// 창고 데이터
class PlayerInfoPageModel {
  PlayerInfo? playerInfo;
  PlayerInfoPageModel({required this.playerInfo});
}