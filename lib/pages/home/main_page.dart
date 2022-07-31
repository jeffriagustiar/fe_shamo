import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
            type: BottomNavigationBarType.fixed,
            items: [
              
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/Home_icon.png',
                  width: 21,
                ),
                label: ''
              ),
              
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/Chat_icon.png',
                  width: 20,
                ),
                label: ''
              ),
              
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/Union_icon.png',
                  width: 20,
                ),
                label: ''
              ),
              
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/Profile_icon.png',
                  width: 18,
                ),
                label: ''
              ),
              
            ]
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: Center(child: Text('Main Page')),
    );
  }
}