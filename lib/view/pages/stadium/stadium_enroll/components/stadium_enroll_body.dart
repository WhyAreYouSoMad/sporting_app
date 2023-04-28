import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/controller/stadium_controller.dart';
import 'package:sporting_app/core/constants/my_lists.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/components/my_dropdown_button_form_field.dart';
import 'package:sporting_app/view/pages/stadium/stadium_enroll/components/stadium_enroll_form.dart';

class StadiumEnrollBody extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _stadiumName = TextEditingController();
  final _stadiumAddress = TextEditingController();

  StadiumEnrollBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MyDropdownButtonFormField category = MyDropdownButtonFormField(items: sportCategories, initValue: sportCategories.first);
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
        child: ListView(
          children: [
            StadiumEnrollForm(stadiumName: _stadiumName, stadiumAddress: _stadiumAddress),
            const SizedBox(height: 30),
            category,
            const SizedBox(height: 250),
            MyButton(
              funButton: () {
                if (_formKey.currentState!.validate()) {
                  ref.read(stadiumControllerProvider).saveStadium(
                      _stadiumName.text.trim(),
                      _stadiumAddress.text.trim(),
                      category.initValue
                  );
                }
              },
              text: '경기장 등록',
              height: 50,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
