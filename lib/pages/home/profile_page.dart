import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset('assets/profile_image.png',width: 64,),
                ),
                SizedBox(width: 16,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, Alex',
                        style: primaryTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semibold
                        ),
                      ),
                      Text(
                        '@alexkeinn',
                        style: subTextStyle.copyWith(
                          fontSize: 16
                        ),
                      )
                    ],
                  )
                ),
                Image.asset('assets/Exit_Button.png',width: 20,)
              ],
            ),
          )
        ),
      );
    }

    return Column(
      children: [
        header(),
      ],
    );
  }
}