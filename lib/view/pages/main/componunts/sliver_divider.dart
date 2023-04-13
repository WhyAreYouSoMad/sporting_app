import 'package:flutter/material.dart';

class SliverDivider extends StatelessWidget {
  final double topPadding;

  const SliverDivider({this.topPadding = 0, Key? key}) : super(key: key);

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
                  thickness: 11,
                  height: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
