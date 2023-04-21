import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/utils/my_validate_util.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';
import 'package:flutter_final_project_practice/view/components/my_text_form_field.dart';

const double _kItemExtent = 32.0;
const List<String> _sportCategories = <String>[
  '종목 선택',
  '축구',
  '테니스',
  '야구',
  '볼링',
  '당구',
  '골프',
  '탁구',
  '농구',
];

class StadiumEnrollForm extends StatefulWidget {
  const StadiumEnrollForm({Key? key}) : super(key: key);

  @override
  State<StadiumEnrollForm> createState() => _StadiumEnrollFormState();
}

class _StadiumEnrollFormState extends State<StadiumEnrollForm> {
  final _formKey = GlobalKey<FormState>();
  final _stadiumName = TextEditingController();
  final _stadiumAddress = TextEditingController();

  int _selectedSport = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          MyTextFormField(
            hint: "경기장 이름",
            funValidator: validateStadiumName(),
            controller: _stadiumName,
          ),
          const SizedBox(height: 30),
          MyTextFormField(
            hint: "경기장 주소",
            funValidator: validateStadiumAddress(),
            controller: _stadiumAddress,
          ),
          const SizedBox(height: 30),
          _buildSelectCategory(),
          // _buildButton(),
          const SizedBox(height: 250),
          MyButton(
            funButton: () {},
            text: '경기장 등록',
            height: 50,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget _buildSelectCategory() {
    return InkWell(
      onTap: () => _showDialog(
        CupertinoPicker(
          magnification: 1.22,
          squeeze: 1.2,
          useMagnifier: true,
          itemExtent: _kItemExtent,
          // This is called when selected item is changed.
          onSelectedItemChanged: (int selectedItem) {
            setState(() {
              _selectedSport = selectedItem;
            });
          },
          children: List<Widget>.generate(
            _sportCategories.length,
            (int index) {
              return Center(
                child: Text(
                  _sportCategories[index],
                ),
              );
            },
          ),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Center(
          child: Text(
            _sportCategories[_selectedSport],
            style: const TextStyle(
              fontSize: 22.0,
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }
}
