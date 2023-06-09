import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/controller/player_controller.dart';
import 'package:sporting_app/core/utils/my_validate_util.dart';
import 'package:sporting_app/model/user/user.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/pages/player/player_info_update/components/player_info_update_address_form.dart';
import 'package:sporting_app/view/pages/player/player_info_update/components/player_info_update_form.dart';
import 'package:sporting_app/view/pages/player/player_info_update/components/player_info_update_header.dart';
import 'package:sporting_app/view/pages/player/player_info_update/player_info_update_page_view_model.dart';

class PlayerInfoUpdateBody extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nickname = TextEditingController();
  final TextEditingController _tel = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _checkPassword = TextEditingController();
  final TextEditingController _address = TextEditingController();

  PlayerInfoUpdateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PlayerInfoUpdatePageModel? model = ref.watch(playerInfoUpdatePageProvider);
    User? user;
    if (model != null) {
      user = model.user;
      _nickname.text = user.nickname;
      if (user.playerInfo?.tel != null && user.playerInfo?.address != null) {
        _tel.text = user.playerInfo!.tel;
        _address.text = user.playerInfo!.address;
      }
    }
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          PlayerInfoUpdateHeader(
              nicknameCon: _nickname, nicknameValidator: validateNickName()),
          const SizedBox(height: 20),
          const Divider(thickness: 10, height: 30),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "개인정보",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 30),
                PlayerInfoUpdateForm(
                  telCon: _tel,
                  passwordCon: _password,
                  checkPasswordCon: _checkPassword,
                  passwordValidator: validatePassword(),
                ),
                PlayerInfoUpdateAddressForm(
                  addressCon: _address,
                  addressValidator: validateStadiumAddress(),
                ),
                const SizedBox(height: 90),
                MyButton(
                  funButton: () {
                    if (_formKey.currentState!.validate() && _password.text == _checkPassword.text) {
                      ref.read(playerControllerProvider).updatePlayer(
                          _nickname.text,
                          _tel.text,
                          _password.text,
                          _address.text,
                          user!.playerInfo!.sourceFile.id);
                    }
                  },
                  text: '수정',
                  fontWeight: FontWeight.bold,
                  width: 200,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
