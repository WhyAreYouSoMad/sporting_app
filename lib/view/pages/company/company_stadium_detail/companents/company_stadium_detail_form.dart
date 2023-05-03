import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/components/my_dropdown_button_form_field.dart';

class CompanyStadiumDetailForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final String address;

  CompanyStadiumDetailForm({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '경기장 정보',
            style: TextStyle(color: kTextColor, fontSize: 25),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text(
                '경기장 위치',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(width: 20),
              SizedBox(
                width: 250,
                child: Text(
                  address,
                  style: const TextStyle(fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                '영업 시간',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(width: 37),
              SizedBox(
                width: 100,
                height: 60,
                child: MyDropdownButtonFormField(items: const [
                  '1시',
                  '2시',
                  '3시',
                  '4시',
                  '5시',
                  '6시',
                  '7시',
                  '8시',
                  '9시',
                  '10시',
                  '11시',
                  '12시',
                  '13시',
                  '14시',
                  '15시',
                  '16시',
                  '17시',
                  '18시',
                  '19시',
                  '20시',
                  '21시',
                  '22시',
                  '23시',
                  '24시'
                ], initValue: '8시'),
              ),
              const SizedBox(width: 37),
              SizedBox(
                width: 100,
                height: 60,
                child: MyDropdownButtonFormField(items: const [
                  '1시',
                  '2시',
                  '3시',
                  '4시',
                  '5시',
                  '6시',
                  '7시',
                  '8시',
                  '9시',
                  '10시',
                  '11시',
                  '12시',
                  '13시',
                  '14시',
                  '15시',
                  '16시',
                  '17시',
                  '18시',
                  '19시',
                  '20시',
                  '21시',
                  '22시',
                  '23시',
                  '24시'
                ], initValue: '22시'),
              )
            ],
          ),
          Row(
            children: [
              const Text(
                '영업 상태',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(width: 37),
              SizedBox(
                width: 236,
                height: 60,
                child: MyDropdownButtonFormField(
                    items: const ['영업중', '휴업중'], initValue: '영업중'),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                '경기 종목',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(width: 37),
              SizedBox(
                width: 236,
                height: 60,
                child: MyDropdownButtonFormField(
                    items: const ['축구', '야구', '농구', '골프', '테니스', '탁구', '골프', '볼링'],
                    initValue: '야구'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
