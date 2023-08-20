import 'package:flutter/material.dart';
import 'package:inventrify/constants.dart';
import 'package:inventrify/screens/assets/assets_screen.dart';
import 'package:inventrify/screens/home/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int navIndex = 0;
  final screens = [
    const HomeScreen(),
    const AssetsScreen(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: IndexedStack(
      //   index: currentIndex,
      //   children: screens,
      // ),
      body: screens[navIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navIndex,
        onTap: (index) => setState(() {
          // currentIndex = widget.navIndex;
          navIndex = index;
        }),
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedLabelStyle: TextStyle(color: Colors.black),
        showSelectedLabels: true,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: navIndex == 0 ? splashBackgroundColor : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.home_filled),
            ),
            label: "Home",
            //backgroundColor: greenColor
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: navIndex == 1 ? splashBackgroundColor : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.important_devices),
            ),
            label: "Assets",
            //backgroundColor: greenColor
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: navIndex == 2 ? splashBackgroundColor : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.qr_code_scanner),
            ),
            label: "Scan",
          ),
        ],
      ),
    );
  }
}
