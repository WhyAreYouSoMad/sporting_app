import 'package:flutter/material.dart';

class BottomContent extends StatelessWidget {
  const BottomContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          _idInformation(),
          _email(),
          _passwordInformation(),
          _above(),
          _number(),
          _button(context)
        ],
      ),
    );
  }
  ElevatedButton _button(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text("수정하기"));
  }

  Padding _number() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [Text("사업자번호"), SizedBox(width: 23), Text("123455745511")],
      ),
    );
  }
  Padding _above() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 28),
      child: Row(
        children: [Text("사무실 위치"), SizedBox(width: 23), Text("해바라기시")],
      ),
    );
  }

  Row _passwordInformation() {
    return Row(
      children: [
        Text("비밀번호"),
        SizedBox(width: 30),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }
  Padding _email() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: [Text("이메일"), SizedBox(width: 50), Text("a0211a@naver.com")],
      ),
    );
  }

  Row _idInformation() {
    return Row(
      children: [
        Text("아이디"),
        SizedBox(width: 45),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }
}

class MyImage extends StatefulWidget {

  const MyImage({Key? key}) : super(key: key);

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  bool _isImageSelected = true;

  void _changeImage() {
    setState(() {
      _isImageSelected = !_isImageSelected;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: GestureDetector(
            onTap: _changeImage,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                child: _isImageSelected
                    ? Image.asset("assets/images/icons/man.png",
                    color: Colors.white, width: 50, height: 50)
                    : Image.asset("assets/images/icons/her.png",
                    color: Colors.white, width: 50, height: 50),
              ),
            ),
          ),
        ),
      );
    }
}

class MyName extends StatelessWidget {
  const MyName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
            Text(
              "닉네임",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 45),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }



