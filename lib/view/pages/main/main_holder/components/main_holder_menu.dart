import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';

class MainHolderMenu extends StatelessWidget {
  const MainHolderMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
