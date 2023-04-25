import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/pages/bootpay/bootpay.dart';

class StadiumDetailCourtItemButton extends StatelessWidget {
  const StadiumDetailCourtItemButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          borderOnForeground: false,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.orange, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> bootpay()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.orange,
                  ),
                  width: 80,
                  height: 35,
                  // color: Colors.orange,
                  child: const Center(
                    child: Text(
                      "오전 10:00",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 24,
                  width: 80,
                  child: const Center(
                    child: Text(
                      "남은 자리 2",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
