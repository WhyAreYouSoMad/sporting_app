import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:sporting_app/screen/login.dart';
import 'package:sporting_app/screen/sign_up.dart';
import 'package:sporting_app/view/pages/main/main_page.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 280),
                child: Image.asset(
                  'assets/sporting.png',
                  width: 400,
                  height: 400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        alignment: Alignment.center,
                        onPressed: () {},
                        icon: Image.asset('assets/google.png'),
                        iconSize: 50,
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/kak.png'),
                        iconSize: 50,
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/naver.png'),
                        iconSize: 50,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 130),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (_) => loginpage()));
                            },
                            child: Text(
                              '이메일 로그인',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(220, 40),
                              backgroundColor: Colors.green,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(context: context,
                                  builder: (BuildContext context) {
                                return Container(
                                  height: 300,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(onPressed: () {
                                            Navigator.pop(context);
                                          } ,
                                              icon: Icon(Icons.arrow_back_ios),
                                          ),
                                          SizedBox(width: 130),
                                          Text('약관동의', style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),),
                                        ],
                                      ),
                                    Row(
                                      children: [
                                        Checkbox(value: true, onChanged: (bool? value) {},),
                                        Text('레이블을 입력해주세요'),
                                      ],
                                    ),
                                      Row(
                                        children: [
                                          Checkbox(value: true, onChanged: (bool? value) {},),
                                          Text('레이블을 입력해주세요'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Checkbox(value: true, onChanged: (bool? value) {},),
                                          Text('레이블을 입력해주세요'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Checkbox(value: true, onChanged: (bool? value) {},),
                                          Text('레이블을 입력해주세요'),
                                        ],
                                      ),
                                      ElevatedButton(onPressed: () {
                                        Navigator.of(context).
                                        push(MaterialPageRoute(builder: (_) => sign()));
                                      },
                                          child: Text('회원가입'),
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(220, 40),
                                        backgroundColor: Colors.green,
                                      ),),
                                    ],
                                  ),
                                );
                                  },
                                isScrollControlled: true,
                              );
                            },
                            child: Text(
                              '회원가입',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(220, 40),
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => MainPage()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
