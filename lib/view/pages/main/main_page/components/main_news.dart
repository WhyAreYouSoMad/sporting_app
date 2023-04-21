import 'package:flutter/material.dart';

class MainNews extends StatelessWidget {
  const MainNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        children: [
          BigNewsTab(
            title: "UCL 8강에서 만난 우승 후보 팀들 간의 맞대결!",
            subtitle: "'펩과 투헬 격돌'...맨시티vs뮌헨 \n 선발 공개[UCL 라인업]",
            image: "assets/images/news/big_news.jpg",
          ),
          MiniNewsList(),
        ],
      ),
    );
  }
}

class MiniNewsList extends StatelessWidget {
  const MiniNewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          MiniNewsTab(title: "6년 만의 WBC, 한국대표팀 \n일정은? 한일전은..", image: "assets/images/news/mini_news_1.jpg"),
          MiniNewsTab(title: "네덜란드 축구 대표팀 \n  카타르 월드컵 명단.", image: "assets/images/news/mini_news_2.jpg"),
          MiniNewsTab(title: "네덜란드 축구 대표팀 \n  카타르 월드컵 명단.", image: "assets/images/news/mini_news_2.jpg"),
        ],
      ),
    );
  }
}

class MiniNewsTab extends StatelessWidget {
  final String title;
  final String image;

  const MiniNewsTab({required this.title, required this.image, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNewsImage(),
            const SizedBox(height: 10),
            _buildNewsTitle()
          ],
        ),
      ),
    );
  }

  ClipRRect _buildNewsImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: SizedBox(
        width: 175,
        height: 100,
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }

  Text _buildNewsTitle() {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 13,
      ),
    );
  }
}


class BigNewsTab extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const BigNewsTab(
      {required this.title,
      required this.subtitle,
      required this.image,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        _buildTitle(),
        const SizedBox(height: 15),
        _buildNewsBanner(),
      ],
    );
  }

  GestureDetector _buildNewsBanner() {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          _buildNewsImage(),
          _buildSubtitle(),
        ],
      ),
    );
  }

  Text _buildTitle() {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
    );
  }

  Widget _buildSubtitle() {
    return Positioned(
      left: 30,
      bottom: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildNewsImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            image,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
