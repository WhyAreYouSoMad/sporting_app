import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';

class Notice extends StatelessWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String noticeText1 = "[공지] Sporting 앱이 리뉴얼되었어요 🥰";
    String noticeDay1 = "2023.04.13";
    String noticeText2 = "[안내] 4월 이벤트에 참여하세요!";
    String noticeDay2 = "2023.04.05";
    String noticeText3 = "[공지] 5월 휴무일 안내";
    String noticeDay3 = "2023.05.13";
    String noticeText4 = "[안내] 서비스 점검 사전 안내";
    String noticeDay4 = "2023.03.27";
    String noticeText5 = "[안내] 실내 마스크 착용 의무 조정에 따른 안내";
    String noticeDay5 = "2022.03.01";
    String noticeText6 = "[안내] 실내 마스크 착용 의무 조정에 따른 안내";
    String noticeDay6 = "2022.03.01";
    String noticeText7 = "[공지] Sporting 이용약관 일부 개정 안내";
    String noticeDay7 = "2022.02.01";
    String noticeText8 = "[공지] 웹페이지 서비스 지원 오픈 안내";
    String noticeDay8 = "2022.01.15";

    return Scaffold(
      backgroundColor: kGrayColor.withOpacity(0.1),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  _notice(noticeText1, noticeDay1),
                Divider(thickness: 1),
                _notice(noticeText2, noticeDay2),
                Divider(thickness: 1),
                _notice(noticeText3, noticeDay3),
                Divider(thickness: 1),
                _notice(noticeText4, noticeDay4),
                Divider(thickness: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 550,
                      height: 100,
                      child: Image.asset("assets/images/notice/Banner2.jpg",fit: BoxFit.cover),
                    ),
                  ),
                ),
                _notice(noticeText5, noticeDay5),
                Divider(thickness: 1),
                _notice(noticeText6, noticeDay6),
                Divider(thickness: 1),
                _notice(noticeText7, noticeDay7),
                Divider(thickness: 1),
                _notice(noticeText8, noticeDay8),
                Divider(thickness: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 550,
                      height: 100,
                      child: Image.asset("assets/images/notice/Banner1.jpg",fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }

  Column _notice(String text, String day) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),),
                    Text(day, style: TextStyle(
                      fontWeight: FontWeight.w200,
                    ),)
                  ],
                );
  }
}
