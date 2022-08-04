import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  // const ProductPage({Key? key}) : super(key: key);
  List images = [
    'assets/gsepatu1.png',
    'assets/gsepatu2.png',
    'assets/gsepatu3.png',
    ];
  
  List familiarShoes = [
    'assets/gsepatu1.png',
    'assets/gsepatu2.png',
    'assets/gsepatu3.png',
    'assets/gsepatu1.png',
    'assets/gsepatu2.png',
    'assets/gsepatu3.png',
    'assets/gsepatu1.png',
    'assets/gsepatu2.png',
    'assets/gsepatu3.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget indicator(int index){
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : Color(0xffC4C4C4)
        ),
      );
    }

    Widget familiarShoesCard(String imageUrl){
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl)
          ),
          borderRadius: BorderRadius.circular(6)
        ),
      );
    }

    Widget header(){

      int index = -1;

      return Column(
        children: [

          Container(
            margin: EdgeInsets.only(top: 20,left: defaultMargin,right: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.chevron_left)
                ),
                Icon(Icons.shopping_bag,color: backgroundColor1,)
              ],
            ),
          ),

          CarouselSlider(
            items: images.map(
              (image) => Image.asset(
                image,
                width: MediaQuery.of(context).size.width,
                height: 310,
                fit: BoxFit.cover,
              )
            ).toList(), 
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason){
                setState(() {
                  currentIndex = index;
                });
              }
            )
          ),

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            } ).toList(),
          )

        ],
      );
    }

    Widget content(){

      int index = -1;

      return Container(
        margin: EdgeInsets.only(top: 17),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24)
          ),
          color: backgroundColor1
        ),
        child: Column(
          children: [

            //? Note : Header Content
            Container(
              margin: EdgeInsets.only(top: defaultMargin,left: defaultMargin,right: defaultMargin),
              child: Row(
                children: [

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TERREX URBAN LOW',
                          style: primaryTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semibold
                          ),
                        ),
                        Text(
                          'Hiking',
                          style: secondTextStyle.copyWith(
                            fontSize: 12
                          ),
                        )
                      ],
                    ),
                  ),

                  Image.asset('assets/Love_Button_blck.png',width: 46,)

                ],
              ),
            ),

            //? Note. Price Content
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(top: 20,left: defaultMargin,right: defaultMargin),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(4)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price starts from',
                    style: primaryTextStyle,
                  ),
                  Text(
                    '\$143,98',
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold
                    ),
                  )
                ],
              ),
            ),

            //? Note. Description Content
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: defaultMargin, right: defaultMargin,left: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium
                    ),
                  ),
                  SizedBox(height: 12,),
                  Text(
                    'Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.',
                    style: subTextStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),

            //? Note. Familiar Content
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Text(
                      'Familiar Shoes',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: familiarShoes
                      .map((image) {
                        index ++;
                        return Container(
                          margin: EdgeInsets.only(
                            left: index == 0 ? defaultMargin : 0
                          ),
                          child: familiarShoesCard(image)
                        );
                      }).toList(),
                    ),
                  )
                  //
                ],
              ),
            ),

          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [
          header(),
          content()
        ],
      )
    );
  }
}