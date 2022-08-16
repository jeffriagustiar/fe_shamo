import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/providers/auth_provider.dart';
import 'package:shamo/providers/cart_provider.dart';
import 'package:shamo/providers/transaction_provider.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/checkout_card.dart';
import 'package:shamo/widgets/loading_buttom.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  bool isLoding = false;

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    TransactionProvider transactionProvider =
        Provider.of<TransactionProvider>(context);
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleCheckout() async {
      setState(() {
        isLoding = true;
      });

      if (await transactionProvider.checkout(authProvider.user.token!,
          cartProvider.carts, cartProvider.totalPrice())) {
        cartProvider.carts = [];
        Navigator.pushNamed(context, '/checkout-success');
      }

      setState(() {
        isLoding = false;
      });
    }

    Widget header() {
      return AppBar();
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          //? Note : List Item
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                      fontWeight: medium, fontSize: 16),
                ),
                Column(
                  children: cartProvider.carts
                      .map((cart) => CheckoutCard(cart))
                      .toList(),
                )
              ],
            ),
          ),

          //? Note : Address Details
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address Details',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/Restaurant_Icon.png',
                          width: 40,
                        ),
                        Image.asset(
                          'assets/Line.png',
                          height: 40,
                        ),
                        Image.asset(
                          'assets/Location_Icon.png',
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Location',
                          style: secondTextStyle.copyWith(
                              fontSize: 12, fontWeight: light),
                        ),
                        Text(
                          'Adidas Core',
                          style: primaryTextStyle.copyWith(fontWeight: medium),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text(
                          'Your Address',
                          style: secondTextStyle.copyWith(
                              fontSize: 12, fontWeight: light),
                        ),
                        Text(
                          'Marsemoon',
                          style: primaryTextStyle.copyWith(fontWeight: medium),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),

          //? Note: Payment
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: backgroundColor4,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Summary',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Quantity',
                      style: secondTextStyle.copyWith(fontSize: 12),
                    ),
                    Text(
                      '${cartProvider.totalItems()} Items',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Price',
                      style: secondTextStyle.copyWith(fontSize: 12),
                    ),
                    Text(
                      '\$${cartProvider.totalPrice()}',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: secondTextStyle.copyWith(fontSize: 12),
                    ),
                    Text(
                      'Free',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xff2E3141),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: priceTextStyle.copyWith(fontWeight: semibold),
                    ),
                    Text(
                      '\$${cartProvider.totalPrice()}',
                      style: priceTextStyle.copyWith(fontWeight: semibold),
                    ),
                  ],
                )
              ],
            ),
          ),

          //? Note: Checkout Buttom
          SizedBox(
            height: defaultMargin,
          ),
          Divider(
            thickness: 1,
            color: Color(0xff2E3141),
          ),
          isLoding
              ? Container(
                  child: LoadingButtom(),
                  margin: EdgeInsets.only(bottom: defaultMargin),
                )
              : Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: defaultMargin),
                  child: TextButton(
                      onPressed: handleCheckout,
                      style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: Text(
                        'Checkout Now',
                        style: primaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: semibold),
                      )),
                )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text('Checkout Details'),
      ),
      body: content(),
    );
  }
}
