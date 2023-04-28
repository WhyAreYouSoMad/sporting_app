import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sporting_app/core/utils/my_validate_util.dart';
import 'package:sporting_app/view/components/my_text_form_field.dart';
import 'package:sporting_app/view/pages/stadium/stadium_enroll/components/stadium_enroll_address_input.dart';


class StadiumEnrollForm extends StatelessWidget {

  final TextEditingController stadiumName;
  final TextEditingController stadiumAddress;

  const StadiumEnrollForm({Key? key, required this.stadiumName, required this.stadiumAddress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextFormField(
          hint: "경기장 이름",
          funValidator: validateStadiumName(),
          controller: stadiumName,
        ),
        const SizedBox(height: 30),
        StadiumEnrollAddressInput(addressCon: stadiumAddress),
      ],
    );
  }
}
