import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shamo/providers/auth_provider.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/loading_buttom.dart';

class Sign_up extends StatefulWidget {
  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  // const Sign_up({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController(text: '');

  TextEditingController usernameController = TextEditingController(text: '');

  TextEditingController emailController = TextEditingController(text: '');

  TextEditingController passwordController = TextEditingController(text: '');

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignUp() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.register(
          name: nameController.text,
          username: usernameController.text,
          email: emailController.text,
          password: passwordController.text)) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: alertColor,
            content: Text(
              'Gagal Register!',
              textAlign: TextAlign.center,
            )));
      }

      setState(() {
        isLoading = false;
      });
    }

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: primaryTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Register and Happy Shoping',
              style: subTextStyle.copyWith(fontWeight: regular, fontSize: 14),
            )
          ],
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextFormField(
                        style: primaryTextStyle,
                        controller: nameController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Full Name',
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

    Widget userInput() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextFormField(
                        style: primaryTextStyle,
                        controller: usernameController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Username',
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

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextFormField(
                        style: primaryTextStyle,
                        controller: emailController,
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
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextFormField(
                        obscureText: true,
                        style: primaryTextStyle,
                        controller: passwordController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
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
        margin: const EdgeInsets.only(top: 30),
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            onPressed: handleSignUp,
            child: Text(
              'Sign Up',
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            )),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: subTextStyle.copyWith(fontWeight: regular, fontSize: 12),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                ' Sign In',
                style:
                    purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff1F1D2B),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                nameInput(),
                userInput(),
                emailInput(),
                passwordInput(),
                isLoading ? LoadingButtom() : buttom(),
                SizedBox(
                  height: 20,
                ),
                footer(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
