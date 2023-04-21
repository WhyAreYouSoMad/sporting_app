import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/core/utils/my_number_editing_controller.dart';
import 'package:sporting_app/core/utils/my_validate_util.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/companents/company_stadium_detail_text_form_field.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/companents/my_dropdown_button_form_field.dart';

class CompanyStadiumDetailForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _startTime = MyNumberEditingController();

  CompanyStadiumDetailForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '경기장 정보',
            style: TextStyle(color: kTextColor, fontSize: 25),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                '경기장 위치',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 250,
                child: Text(
                  '부산광역시 광진구 야호동1길 13',
                  style: TextStyle(fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(

            children: [
              Text(
                '영업 시간',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 37),
              SizedBox(
                width: 150,
                height: 60,
                child: MyDropdownButtonFormField(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
