import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/Logo_Shop_Picture.png',
                width: 40,
              ),
              SizedBox(width: 12,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14
                    ),
                  ),
                  Text(
                    'Online',
                    style: secondTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14
                    ),
                  )
                ],
              )
            ],
          ),
        );
    }

    Widget chatInput(){
      return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(
                  horizontal: 16, 
                ),
                decoration: BoxDecoration(
                  color: backgroundColor4,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Type Message...',
                      hintStyle: subTextStyle
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(width: 20,),

            Image.asset('assets/Send_Button.png',width: 45,)

          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        child: header(), 
        preferredSize: Size.fromHeight(70)
      ),
      bottomNavigationBar: chatInput(),
      // body: ,
    );
  }
}