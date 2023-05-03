import 'package:flutter/material.dart';
import 'package:sporting_app/core/utils/my_validate_util.dart';
import 'package:sporting_app/model/court/court.dart';
import 'package:sporting_app/view/components/my_image_container.dart';
import 'package:sporting_app/view/components/my_text_form_field.dart';
import 'package:sporting_app/view/components/my_dropdown_button_form_field.dart';

class CompanyStadiumDetailCourtDetail extends StatelessWidget {
  final Court court;
  final TextEditingController courtTitleCon;
  final TextEditingController courtContentCon;
  final TextEditingController courtPriceCon;

  const CompanyStadiumDetailCourtDetail({
    Key? key,
    required this.court,
    required this.courtTitleCon,
    required this.courtContentCon,
    required this.courtPriceCon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyImageContainer(image: court.sourceFile.fileUrl, imageHeight: 200),
        const SizedBox(height: 30),
        Form(
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "코트명",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 60),
                  SizedBox(
                    width: 236,
                    height: 60,
                    child: MyTextFormField(
                      hint: '코트명 입력',
                      funValidator: validateStadiumName(),
                      controller: courtTitleCon,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    "코트 설명",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 37),
                  SizedBox(
                    width: 236,
                    height: 60,
                    child: MyTextFormField(
                      hint: '코트 설명 입력',
                      funValidator: validateStadiumName(),
                      controller: courtContentCon,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    '최대 인원',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 40),
                  SizedBox(
                    width: 236,
                    height: 60,
                    child: MyDropdownButtonFormField(
                      items: const [
                        '1명',
                        '2명',
                        '3명',
                        '4명',
                        '5명',
                        '6명',
                        '7명',
                        '8명',
                        '9명',
                        '10명',
                        '11명',
                        '12명',
                        '13명',
                        '14명',
                        '15명',
                        '16명',
                        '17명',
                        '18명',
                        '19명',
                        '20명',
                        '21명',
                        '22명',
                        '23명',
                        '24명',
                        '25명',
                        '26명',
                        '27명',
                        '28명',
                        '29명',
                        '30명'
                      ],
                      initValue: '12명',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    '대여 가격',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 37),
                  SizedBox(
                    width: 236,
                    height: 60,
                    child: MyTextFormField(
                      hint: '가격',
                      funValidator: validatePrice(),
                      controller: courtPriceCon,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
