import 'package:bootpay/model/item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/pages/bootpay/total_payment.dart';

class StadiumDetailCourtItem extends StatelessWidget {
  final int courtId;
  final String courtTitle;
  final String courtContent;
  final int courtPrice;
  final String courtImage;
  final int courtCapacity;

  const StadiumDetailCourtItem({
    required this.courtId,
    required this.courtPrice,
    required this.courtContent,
    required this.courtImage,
    required this.courtTitle,
    required this.courtCapacity,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          Item item = Item();
          item.name = courtTitle; // 주문정보에 담길 상품명
          item.qty = 1; // 해당 상품의 주문 수량
          item.id = courtId.toString(); // 해당 상품의 고유 키
          item.price = courtPrice.toDouble(); // 상품의 가격
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=> TotalPayment(item: item,)));
          },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(imageUrl: courtImage),
            // Image.asset(courtImage),
            const SizedBox(height: 10),
             Text(
             courtTitle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  courtContent,
                  style:
                      TextStyle(fontWeight: FontWeight.w200, color: kTextColor),
                ),
                Text(
                  "최대 $courtCapacity인 수용",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
                ),
              ],
            ),
            const SizedBox(height: 5),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1시간 대여",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: kTextColor),
                ),
                Text(
                  courtPrice.toString(),
                  style: TextStyle(
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
