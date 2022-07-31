import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin
        ),

        child: Row(
          children: [

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Alex',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold
                    ),
                  ),
                  Text(
                    '@alexkeinn',style: subTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),

            Spacer(),

            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/profile_image.png'))
              ),
            )

          ],
        ),

      );
    }

    return ListView(
      children: [
        header(),
      ],
    );
  }
}