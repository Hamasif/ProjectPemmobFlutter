import 'package:flutter/material.dart';
import 'package:projectpemmob/pages/home/chat_page.dart';
import 'package:projectpemmob/pages/home/home_page.dart';
import 'package:projectpemmob/pages/home/profile_page.dart';
import 'package:projectpemmob/pages/home/wishlist_page.dart';
import 'package:projectpemmob/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currenIndext = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: secondaryColor,
        shape: CircleBorder(), // Membuat tombol berbentuk lingkaran
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
        ),
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: backgroundColor4,
          currentIndex: currenIndext,
          onTap: (value) {
            setState(() {
              print(value);
              currenIndext = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_home.png',
                  width: 21,
                  color: currenIndext == 0 ? primaryColor : Color(0xff808191),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_chat.png',
                  width: 20,
                  color: currenIndext == 1 ? primaryColor : Color(0xff808191),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_favorite.png',
                  width: 21,
                  color: currenIndext == 2 ? primaryColor : Color(0xff808191),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_profile.png',
                  width: 21,
                  color: currenIndext == 3 ? primaryColor : Color(0xff808191),
                ),
                label: ''),
          ],
        ),
      );
    }

    Widget body() {
      switch (currenIndext) {
        case 0:
          return HomePage();
        case 1:
          return ChatPage();
        case 2:
          return WishlistPage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: currenIndext == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
