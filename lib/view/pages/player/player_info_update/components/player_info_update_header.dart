import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/view/pages/player/player_info_update/player_info_update_page_view_model.dart';

class PlayerInfoUpdateHeader extends ConsumerWidget {
  final TextEditingController nicknameCon;
  final nicknameValidator;

  const PlayerInfoUpdateHeader({
    Key? key,
    required this.nicknameCon,
    required this.nicknameValidator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                child: CachedNetworkImage(
                    imageUrl: ref
                        .watch(playerInfoUpdatePageProvider)!
                        .user
                        .playerInfo!
                        .sourceFile
                        .fileUrl),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "닉네임",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 69),
              Expanded(
                child: TextFormField(
                  controller: nicknameCon,
                  validator: nicknameValidator,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
