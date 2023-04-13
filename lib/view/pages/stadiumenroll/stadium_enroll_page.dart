import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/componunts/input_form.dart';
import 'package:sporting_app/view/componunts/my_button.dart';
import 'package:sporting_app/view/componunts/term_check_box.dart';

class StadiumEnrollPage extends StatelessWidget {
  const StadiumEnrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ListView(
        children: [
          const InputForm(hintText: "경기장 이름"),
          const InputForm(hintText: "경기장 주소"),
          _buildCheckBox("개인정보 공유 동의"),
          _buildCheckBox("사업자 등록 동의"),
          _buildCheckBox("결제 내역 공유 동의"),
          const SizedBox(height: 100),
          _buildButton(),
        ],
      ),
    );
  }

  Padding _buildButton() {
    return const Padding(
          padding: EdgeInsets.only(left: 35, right: 35, top: 30, bottom: 30),
          child: MyButton(text: "경기장 등록하기"),
        );
  }

  Padding _buildCheckBox(String text) {
    return Padding(
          padding: EdgeInsets.only(left: 30, top: 10),
          child: TermCheckBox(text: text),
        );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop(context);
        },
        icon: const Icon(Icons.arrow_back, color: kDarkIconColor),
      ),
      title: const Text("경기장 등록", style: TextStyle(color: kBlackColor)),
    );
  }

}
