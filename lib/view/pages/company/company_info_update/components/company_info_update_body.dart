import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/user/user.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/pages/company/company_info_update/company_info_update_page_view_model.dart';
import 'package:sporting_app/view/pages/company/company_info_update/components/company_info_update_form.dart';
import 'package:sporting_app/view/pages/company/company_info_update/components/company_info_update_header.dart';

class CompanyInfoUpdateBody extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nickname = TextEditingController();
  final TextEditingController _tel = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _checkPassword = TextEditingController();
  CompanyInfoUpdateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CompanyInfoUpdatePageModel? model = ref.watch(companyInfoUpdatePageProvider);
    if (model != null) {
      User user = model.user;
      _nickname.text = user.nickname;
      if (user.companyInfo?.tel != null) {
        _tel.text = user.companyInfo!.tel;
      }
    }
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          CompanyInfoUpdateHeader(nicknameCon: _nickname),
          const SizedBox(height: 20),
          const Divider(thickness: 10, height: 30),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "개인정보",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 25),
                const Row(
                  children: [Text("사무실 위치"), SizedBox(width: 60), Text("해바라기시")],
                ),
                const SizedBox(height: 25),
                const Row(
                  children: [Text("사업자번호"), SizedBox(width: 60), Text("123455745511")],
                ),
                const SizedBox(height: 25),
                CompanyInfoUpdateForm(telCon: _tel, passwordCon: _password, checkPasswordCon: _checkPassword),
                const SizedBox(height: 50),
                MyButton(
                  funButton: () {
                    Navigator.pop(context);
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

