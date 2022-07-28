import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo/theme.dart';

class Sign_in extends StatelessWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Sign In to Countinue',
              style: subTextStyle.copyWith(fontWeight: regular, fontSize: 14),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: secondTextStyle,
                        ),
                      ))
                    ],
                  ),
                ))
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.key,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextFormField(
                        obscureText: true,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: secondTextStyle,
                        ),
                      ))
                    ],
                  ),
                ))
          ],
        ),
      );
    }

    Widget buttom() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            onPressed: () {},
            child: Text(
              'Sign In',
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            )),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: subTextStyle.copyWith(fontWeight: regular, fontSize: 12),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                ' Sign Up',
                style:
                    purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff1F1D2B),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passwordInput(),
              buttom(),
              Spacer(),
              footer()
            ],
          ),
        ),
      ),
    );
  }
}