import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';

class StadiumDetailCourtItemButton extends StatefulWidget {
  final int index;

  const StadiumDetailCourtItemButton({Key? key, required this.index}) : super(key: key);

  @override
  State<StadiumDetailCourtItemButton> createState() => _StadiumDetailCourtItemButtonState();
}

class _StadiumDetailCourtItemButtonState extends State<StadiumDetailCourtItemButton> {
  bool _selected = false;

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
              setState(() {
                _selected == true ? _selected = false : _selected = true;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: _selected == false ? kGrayColor : Colors.orange,
                  ),
                  width: 80,
                  height: 35,
                  // color: Colors.orange,
                  child: Center(
                    child: Text(
                      "${9+widget.index}:00",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: kWhiteColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
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
