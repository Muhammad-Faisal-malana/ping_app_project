import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ping_project/screens/chat_screen/chat_screen.dart';
import 'package:ping_project/screens/market_place.dart';

import '../create_menu/create_menu.dart';
import '../videos/video.dart';
import 'home_screen.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    VideoScreen(),
    CreateMenuScreen(),
    ChatScreen(),
    MarketPlace(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 77.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(24.0),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFB8CADE).withOpacity(0.24),
              offset: const Offset(0, -6.0),
              blurRadius: 40.0,
            ),
          ],
        ),
        child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home-2.svg',
                  color: _selectedIndex == 0
                      ? const Color(0xff3776A5)
                      : const Color(0xffCFD7ED),
                ),
                label: (''),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/youtube.svg',
                  color: _selectedIndex == 1
                      ? const Color(0xff3776A5)
                      : const Color(0xffCFD7ED),
                ),
                label: (''),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  decoration: const BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  height: 45,
                  width: 45,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                label: (''),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/comments.svg',
                  color: _selectedIndex == 3
                      ? const Color(0xff3776A5)
                      : const Color(0xffCFD7ED),
                ),
                label: (''),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/cart.svg',
                  color: _selectedIndex == 4
                      ? const Color(0xff3776A5)
                      : const Color(0xffCFD7ED),
                ),
                label: (''),
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: const Color(0xffCFD7ED),
            selectedIconTheme: const IconThemeData(color: Colors.black),
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5),
      ),
    );
  }
}
