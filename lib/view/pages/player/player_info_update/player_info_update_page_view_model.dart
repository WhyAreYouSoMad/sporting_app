
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/model/user/user.dart';

final playerInfoUpdatePageProvider = StateNotifierProvider<PlayerInfoUpdatePageViewModel, PlayerInfoUpdatePageModel?>((ref) {
  Logger().d("playerInfoUpdatePageProvider");
  return PlayerInfoUpdatePageViewModel(null);
});

// 창고 데이터
class PlayerInfoUpdatePageModel{
  User user;
  PlayerInfoUpdatePageModel({required this.user});
}

class PlayerInfoUpdatePageViewModel extends StateNotifier<PlayerInfoUpdatePageModel?>{
  PlayerInfoUpdatePageViewModel(super.state);

  void notifyInit(User user) async{
    Logger().d("notifyInit");
    state = PlayerInfoUpdatePageModel(user: user);
  }

}