import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
    
            Row(
              children: [
                Image.asset(
                  'assets/Logo_Shop_Picture.png',
                  width: 54,
                ),
                SizedBox(width: 12,),
                
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: priceTextStyle.copyWith(
                          fontSize: 15
                          ),
                      ),
                      Text(
                        'Good night, This item id no...',
                        style: secondTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondTextStyle.copyWith(
                    fontSize: 10
                  ),
                )
              ],
            ),
            SizedBox(height: 12,),
          ],
        ),
      ),
    );
  }
}