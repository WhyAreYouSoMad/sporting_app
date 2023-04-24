import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/company/company_info/company_info_udate/company_info_update_contents.dart';

class CompanyInfoBody extends StatefulWidget {
  const CompanyInfoBody({Key? key}) : super(key: key);

  @override
  State<CompanyInfoBody> createState() => _CompanyInfoBodyState();
}

class _CompanyInfoBodyState extends State<CompanyInfoBody> {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            MyImage(),
            MyName(),
            Divider(thickness: 10, height: 30),
            _Text(),
            Divider(thickness: 1, height: 30, color: Colors.black54),
            BottomContent(),
          ],
        ),
      ],
    );
  }



  Widget _Text() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text("개인정보", textAlign: TextAlign.start),
        ],
      ),
    );
  }






}

