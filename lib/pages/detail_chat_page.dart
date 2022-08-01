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

    Widget productPriview(){
      return Container(
        height: 74,
        width: 225,
        margin:  EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor5,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primaryColor
          )
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/sepatu1bg.png',width: 54,)
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'COURT VISIO...',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '\$57,15',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('assets/x_btn.png',width: 22,)
          ],
        ),

      );
    }

    Widget chatInput(){
      return Container(
        margin: EdgeInsets.all(20),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            productPriview(),

            Row(
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