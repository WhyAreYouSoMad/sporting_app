import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/user/player_info.dart';
import 'package:sporting_app/model/user/player_info_repository.dart';
import 'package:sporting_app/view/pages/player/player_info/player_info_page_view_model.dart';

final playerInfoController = Provider<PlayerInfoController>((ref) { // @Component와 같다.
  return PlayerInfoController(ref);
});

class PlayerInfoController {
  Ref ref;
  PlayerInfoController(this.ref);
  Future<void> findUser() async {
    PlayerInfo userDTO = await PlayerInfoRepository().findById(4);
    ref.read(playerInfoPageProvider.notifier).init(userDTO);
  }

}