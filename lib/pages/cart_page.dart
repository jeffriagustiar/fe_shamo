import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget emptyCart(){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Cart_iconn.png',width: 80,),

            SizedBox(height: 20,),
            Text(
              'Opss! Your Cart is Empty',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),
            ),
            SizedBox(height: 12,),
            Text(
              'Let\'s find your favorite shoes',
              style: secondTextStyle,
            ),
            Container(
              width: 154,
              height: 44,
              margin: EdgeInsets.only(top: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                )
              ),
            )

          ],
        ),
      );
    }

    Widget content(){
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          CartCard(),
          CartCard(),
          CartCard(),
        ],
      );
    }

    Widget customBottomNav(){
      return Container(
        // width: ,
        height: 180,
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: primaryTextStyle,
                  ),
                  Text(
                    '\$287,96',
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 30,),
            Divider(
              thickness: 0.5,
              color: subtitleColor,
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: TextButton(
                onPressed: () {}, 
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semibold
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: primaryTextColor,)
                  ],
                )
              ),
            )

          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text('Your Cart'),
        elevation: 0,
      ),

      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}