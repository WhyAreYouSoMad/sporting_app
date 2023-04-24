import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remedi_kopo/remedi_kopo.dart';

class BottomContent extends StatefulWidget {



  const BottomContent({
    Key? key}) : super(key: key);

  @override
  State<BottomContent> createState() => _BottomContentState();
}

class _BottomContentState extends State<BottomContent> {
  TextEditingController _AddressController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          _idInformation(),
          _email(),
          _passwordInformation(),
          _callNumber(),
          AddressText(),
          _button(context),
        ],
      ),
    );
  }
  Widget AddressText() {
    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        _addressAPI(); // 카카오 주소 API
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('주소', style: TextStyle(fontSize: 15,)),
            TextFormField(
              enabled: false,
              decoration: InputDecoration(
                isDense: false,
              ),
              controller: _AddressController,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  _addressAPI() async {
    KopoModel model = await Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => RemediKopo(),
      ),
    );
    _AddressController.text =
    '${model.zonecode!} ${model.address!} ${model.buildingName!}';
  }
}

  Widget _button(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("수정하기")),
    );
  }

  Row _callNumber() {
    return Row(
      children: [
        Text("비밀번호"),
        SizedBox(width: 33),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(right: 10, left: 10),
            ),
          ),
        ),
      ],
    );
  }

  Row _passwordInformation() {
    return Row(
      children: [
        Text("휴대폰번호"),
        SizedBox(width: 20),
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



