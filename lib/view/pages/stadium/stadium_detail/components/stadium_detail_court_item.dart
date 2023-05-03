import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/controller/payment_controller.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/model/court/court.dart';

class StadiumDetailCourtItem extends ConsumerWidget {
  final Court court;

  const StadiumDetailCourtItem({
    required this.court,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          // 코트의 정보를 가지고 결제 페이지로 이동
          ref.read(paymentControllerProvider).getTotalPayment(court);
          },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(imageUrl: court.sourceFile.fileUrl),
            const SizedBox(height: 10),
             Text(
             court.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  court.content,
                  style:
                      const TextStyle(fontWeight: FontWeight.w200, color: kTextColor),
                ),
                Text(
                  "최대 ${court.capacity}인 수용",
                  style:
                      const TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
                ),
              ],
            ),
            const SizedBox(height: 5),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "1시간 대여",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: kTextColor),
                ),
                Text(
                  court.price.toString(),
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kTextColor),
                ),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
