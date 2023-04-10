import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sporting_app/screen/login_page.dart';
import 'package:sporting_app/view/common/constants.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: _buildNavigationBar(),
    );
  }

  Widget _buildNavigationBar() {
    return CurvedNavigationBar(
      backgroundColor: Colors.greenAccent,
      color: kWhiteColor,
      animationDuration: const Duration(milliseconds: 300),
      onTap: (index) {},
      items: [
        const Icon(Icons.map, color: kDarkIconColor),
        const Icon(Icons.sports_baseball, color: kDarkIconColor),
        Image.asset('assets/sporting.png', color: kLogoColor),
        const Icon(Icons.mail, color: kDarkIconColor),
        const Icon(Icons.person, color: kDarkIconColor),
      ],
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leading: _leadingButton(context),
      actions: [_actionButton(context)],
    );
  }

  IconButton _actionButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => MyLogin()));
      },
      icon: const Icon(Icons.bookmark, color: kDarkIconColor, size: 30),
    );
  }

  IconButton _leadingButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu, color: kDarkIconColor, size: 30),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return _menuModal(context);
          },
          isScrollControlled: true,
        );
      },
    );
  }

  SafeArea _menuModal(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close, color: kDarkIconColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
