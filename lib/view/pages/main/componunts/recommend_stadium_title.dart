import 'package:flutter/material.dart';

class RecommendStadiumTitle extends StatelessWidget {
  const RecommendStadiumTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "최근 본 경기와 연관된 경기",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 23),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    splashFactory: NoSplash.splashFactory,
                  ),
                  child: const Text("전체보기",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
