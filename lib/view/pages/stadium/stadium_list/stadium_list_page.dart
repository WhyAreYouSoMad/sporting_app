
import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_colors.dart';
import 'package:flutter_final_project_practice/core/constants/my_routes.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';
import 'package:flutter_final_project_practice/view/pages/stadium/stadium_list/components/stadium_list_body.dart';

class StadiumListPage extends StatelessWidget {
  final String sportName;

  const StadiumListPage({Key? key, required this.sportName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: kDarkIconColor),
        ),
        title: Text(
          sportName,
          style: const TextStyle(color: kBlackColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          MyButton(funButton: () {
            Navigator.popAndPushNamed(context, MyRoute.mainPage);
          }, icon: Icons.home),
        ],
      ),
      body: StadiumListBody(),
    );
  }
}
