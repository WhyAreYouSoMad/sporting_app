import 'package:flutter/material.dart';

class InfoInquiry extends StatelessWidget {
  const InfoInquiry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            _buildServiceCenter(),
            _buildKakaoServiceCenter(),
          ],
        ),
      ),
    ]));
  }

  InkWell _buildKakaoServiceCenter() {
    return InkWell(
            onTap: () {},
            child: const SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "카카오톡 1:1 문의",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  )
                ],
              ),
            ),
          );
  }

  InkWell _buildServiceCenter() {
    return InkWell(
            onTap: () {},
            child: SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/CustomerService.png"),
                  const SizedBox(width: 10),
                  const Text(
                    "고객센터",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "365일 오전 9시 ~ 익일 오전 3시 운영",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  )
                ],
              ),
            ),
          );
  }
}
