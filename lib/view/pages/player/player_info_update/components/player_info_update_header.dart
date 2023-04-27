import 'package:flutter/material.dart';

class PlayerInfoUpdateHeader extends StatelessWidget {
  final TextEditingController nicknameCon;

  const PlayerInfoUpdateHeader({Key? key, required this.nicknameCon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                  child: Image.asset("assets/images/icons/man.png",
                      color: Colors.white, width: 50, height: 50)
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "닉네임",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 69),
              Expanded(
                child: TextFormField(
                  controller: nicknameCon,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
