import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/models/user_model.dart';
import 'package:shamo/providers/auth_provider.dart';
import 'package:shamo/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    UserModel user = authProvider.user;

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: priceTextStyle,
              decoration: InputDecoration(
                  hintText: user.name,
                  hintStyle: primaryTextStyle,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: subtitleColor))),
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: secondTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: priceTextStyle,
              decoration: InputDecoration(
                  hintText: '@${user.username}',
                  hintStyle: primaryTextStyle,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: subtitleColor))),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: secondTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: priceTextStyle,
              decoration: InputDecoration(
                  hintText: user.email,
                  hintStyle: primaryTextStyle,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: subtitleColor))),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: defaultMargin),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/profile_image.png'))),
            ),
            nameInput(),
            usernameInput(),
            emailInput()
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text('Edit Profile'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check,
                color: primaryColor,
              ))
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close)),
      ),
      body: content(),
    );
  }
}
