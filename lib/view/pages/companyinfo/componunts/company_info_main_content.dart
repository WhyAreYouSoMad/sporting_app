import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/pages/playerinfo/componunts/player_info_card.dart';

class CompanyInfoMainContent extends StatelessWidget {
  const CompanyInfoMainContent({Key? key}) : super(key: key);

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
                _buildListTile(),
                _buildPointCardButton(),
                _buildCoinCardButton(),
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
            title: "정산 금액", trailingText: "200", image: "assets/pointt.png"),
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

  Widget _buildListTile() {
    return Container(
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: kBlackColor.withOpacity(0.1)),
          )),
      child: ListTile(
        leading: _avatar(),
        title: _username(),
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
      child: const Text("My 이벤트"),
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

  Widget _username() {
    return const Text("바티칸함수명",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19));
  }

  Widget _avatar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset("assets/man.png", fit: BoxFit.cover, height: 40),
    );
  }
}