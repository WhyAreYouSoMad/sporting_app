import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CompanyInfoUpdateHeader extends StatelessWidget {
  final TextEditingController nicknameCon;
  final String image;

  const CompanyInfoUpdateHeader(
      {Key? key, required this.nicknameCon, required this.image})
      : super(key: key);

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
                child: CachedNetworkImage(imageUrl: image),
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
