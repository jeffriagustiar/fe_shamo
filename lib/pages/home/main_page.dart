import 'package:flutter/material.dart';
import 'package:shamo/pages/home/chat_page.dart';
import 'package:shamo/pages/home/home_page.dart';
import 'package:shamo/pages/home/profile_page.dart';
import 'package:shamo/pages/home/wishlist_page.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget cartButtom(){
      return FloatingActionButton(
        backgroundColor: secondColor,
        onPressed: () {},
        child: Image.asset(
          'assets/Cart_icon.png',
          width: 20,
        ),
      );
    }

    Widget customBottomNav(){
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30)
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor4,
            currentIndex: currentIndex,
            onTap: (value){
              setState(() {
                currentIndex = value ;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 5
                  ),
                  child: Image.asset(
                    'assets/Home_icon.png',
                    width: 21,
                    color:  currentIndex == 0 ? primaryColor : Color(0xff808191),
                  ),
                ),
                label: ''
              ),
              
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 5,
                    // right: 50
                  ),
                  child: Image.asset(
                    'assets/Chat_icon.png',
                    width: 20,
                    color:  currentIndex == 1 ? primaryColor : Color(0xff808191),
                  ),
                ),
                label: ''
              ),
              
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 5,
                    // left: 50
                  ),
                  child: Image.asset(
                    'assets/Union_icon.png',
                    width: 20,
                    color:  currentIndex == 2 ? primaryColor : Color(0xff808191),
                  ),
                ),
                label: ''
              ),
              
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 5
                  ),
                  child: Image.asset(
                    'assets/Profile_icon.png',
                    width: 18,
                    color:  currentIndex == 3 ? primaryColor : Color(0xff808191),
                  ),
                ),
                label: ''
              ),
              
            ]
          ),
        ),
      );
    }

    Widget body(){
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default: 
        return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body()
    );
  }
}