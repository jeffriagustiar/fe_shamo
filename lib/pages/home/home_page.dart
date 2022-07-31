import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/product_card.dart';

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

    Widget categories(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: defaultMargin,),
        
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor
                ),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium
                  ),
                ),
              ),
        
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparantColor,
                  border: Border.all(
                    color: subtitleColor
                  )
                ),
                child: Text(
                  'Running',
                  style: subTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium
                  ),
                ),
              ),
        
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparantColor,
                  border: Border.all(
                    color: subtitleColor
                  )
                ),
                child: Text(
                  'Training',
                  style: subTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium
                  ),
                ),
              ),
        
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparantColor,
                  border: Border.all(
                    color: subtitleColor
                  )
                ),
                child: Text(
                  'Basketball',
                  style: subTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium
                  ),
                ),
              ),
        
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparantColor,
                  border: Border.all(
                    color: subtitleColor
                  )
                ),
                child: Text(
                  'Hiking',
                  style: subTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium
                  ),
                ),
              ),
        
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          right: defaultMargin,
          left: defaultMargin
        ),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semibold
          ),
        ),
      );
    }

    Widget popularProducts(){
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [

              SizedBox(width: defaultMargin,),

              Row(
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              )
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductTitle(),
        popularProducts(),
      ],
    );
  }
}