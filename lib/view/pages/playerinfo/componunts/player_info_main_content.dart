import 'package:flutter/material.dart';
import 'package:sporting_app/common/constants.dart';
import 'package:sporting_app/view/pages/playerinfo/componunts/player_info_card.dart';

class PlayerInfoMainContent extends StatelessWidget {
  final String username;
  const PlayerInfoMainContent({required this.username, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          elevation: 3,
          child: Container(
            decoration: _buildBoxDecoration(),
            child: Column(
              children: [
                const SizedBox(height: 10),
                _buildListTile(username),
                _buildPointCardButton(),
                _buildCoinCardButton(),
                _buildCouponCardButton(),
                _buildReviewCardButton(),
                _buildHeartCardButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPointCardButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: kBlackColor.withOpacity(0.1)),
        )),
        child: const PlayerInfoCard(
            title: "포인트", trailingText: "200", image: "assets/pointt.png"),
      ),
    );
  }

  Widget _buildCoinCardButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: kBlackColor.withOpacity(0.1)),
        )),
        child: const PlayerInfoCard(
            title: "Sport Coin", trailingText: "200", image: "assets/coin.png"),
      ),
    );
  }

  Widget _buildCouponCardButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: kBlackColor.withOpacity(0.1)),
        )),
        child: const PlayerInfoCard(
            title: "쿠폰함", trailingText: "1", image: "assets/coopon.png"),
      ),
    );
  }

  Widget _buildReviewCardButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: kBlackColor.withOpacity(0.1)),
        )),
        child: const PlayerInfoCard(
            title: "나의 후기", trailingText: "", image: "assets/sns.png"),
      ),
    );
  }

  Widget _buildHeartCardButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: kBlackColor.withOpacity(0.1)),
        )),
        child: const PlayerInfoCard(
            title: "찜", trailingText: "", image: "assets/her.png"),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: kGrayColor,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(5),
    );
  }

  Widget _buildListTile(String nickname) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: kBlackColor.withOpacity(0.1)),
      )),
      child: ListTile(
        leading: _avatar(),
        title: _username(nickname),
        subtitle: _updateButton(),
        trailing: _myPromotion(),
      ),
    );
  }

  Widget _myPromotion() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.blue, width: 1),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          )),
      child: const Text("MY 헤택"),
    );
  }

  Widget _updateButton() {
    return InkWell(
      onTap: () {},
      child: const Row(
        children: [
          Text(
            "내정보 관리",
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 13),
        ],
      ),
    );
  }

  Widget _username(String nickname) {
    return Text(nickname,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19));
  }

  Widget _avatar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset("assets/man.png", fit: BoxFit.cover, height: 40),
    );
  }
}
