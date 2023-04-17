import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/controller/player_info_controller.dart';
import 'package:sporting_app/view/componunts/sliver_divider.dart';
import 'package:sporting_app/view/componunts/info_inquiry.dart';
import 'package:sporting_app/view/pages/playerinfo/componunts/player_info_main_content.dart';
import 'package:sporting_app/view/componunts/info_reservation_tab.dart';
import 'package:sporting_app/view/pages/playerinfo/player_info_page_view_model.dart';

class PlayerInfoPage extends ConsumerWidget {
  const PlayerInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PlayerInfoController playerInfoCon = ref.read(playerInfoController);
    PlayerInfoPageModel? playerInfoPageModel = ref.watch(playerInfoPageProvider);
    playerInfoCon.findUser();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          PlayerInfoMainContent(username: playerInfoPageModel!.playerInfo!.user.nickname),
          InfoReservationTab(),
          SliverDivider(topPadding: 20),
          InfoInquiry(),
          SliverDivider(),
        ],
      ),
    );
  }
}
