import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Cart_iconn.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You made a transaction',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Stay at home while we\n prepare your dream shoes',
              style: secondTextStyle,
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: defaultMargin),
              height: 44,
              width: 196,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'Order Other Shoes',
                    style: primaryTextStyle.copyWith(fontWeight: semibold),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              height: 44,
              width: 196,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff393748),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'View My Order',
                    style: primaryTextStyle.copyWith(fontWeight: semibold),
                  )),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text('Checkout Success'),
      ),
      body: content(),
    );
  }
}
