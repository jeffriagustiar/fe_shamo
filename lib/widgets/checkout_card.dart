import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
          color: backgroundColor4, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image:
                    DecorationImage(image: AssetImage('assets/sepatu1bg.png'))),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semibold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  '\$128,98',
                  style: priceTextStyle.copyWith(fontWeight: regular),
                )
              ],
            ),
          ),
          Text(
            '2 Items',
            style: secondTextStyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
