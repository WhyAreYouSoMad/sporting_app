import 'package:flutter/material.dart';
import 'package:sporting_app/screen/login_page.dart';


class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  // Container(
  // decoration: BoxDecoration(
  // image: DecorationImage(
  // image: AssetImage('assets/reguster.png'),
  // fit: BoxFit.cover,
  // ),
  // ),

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/reguster.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => MyLogin()));
                      },
                      icon: Icon(Icons.arrow_back_ios),
                      iconSize: 30,
                    ),
                    Text(
                      '로그인',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 40, left: 40),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.green,
                          hintText: 'E-mail',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(width: 0.5),
                          )),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, right: 40, left: 40),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.green,
                      hintText: 'password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(width: 0.5),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('로그인'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, fixedSize: Size(300, 40)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '이메일 찾기',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '비밀번호 찾기',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
