import 'package:flutter/material.dart';
import 'package:sporting_app/core/utils/my_number_editing_controller.dart';
import 'package:sporting_app/view/pages/player/player_info_update/components/player_info_update_address_form.dart';
import 'package:sporting_app/view/pages/player/player_info_update/components/player_info_update_form.dart';
import 'package:sporting_app/view/pages/player/player_info_update/components/player_info_update_header.dart';

class PlayerInfoUpdateBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nickname = TextEditingController();
  final MyNumberEditingController _tel = MyNumberEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _checkPassword = TextEditingController();
  final TextEditingController _address = TextEditingController();

  PlayerInfoUpdateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          PlayerInfoUpdateHeader(nicknameCon: _nickname),
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
                ),
                PlayerInfoUpdateAddressForm(
                  addressCon: _address,
                ),
                const SizedBox(height: 90),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("수정하기"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
