import 'package:flutter/material.dart';

class MyInfoInquiry extends StatelessWidget {
  const MyInfoInquiry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
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
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "고객센터",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(width: 20),
              Text(
                "365일 오전 9시 ~ 익일 오전 3시 운영",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
              )
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
