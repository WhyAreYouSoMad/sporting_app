import 'package:flutter/material.dart';

class MySliverDivider extends StatelessWidget {
  final double topPadding;
  final double thickness;
  final double height;

  const MySliverDivider({
    this.height = 1,
    this.thickness = 11,
    this.topPadding = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: EdgeInsets.only(top: topPadding),
            child: Column(
              children: [
                Divider(
                  color: Colors.grey[300],
                  thickness: thickness,
                  height: height,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}