

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../Home/homeScreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectIndex = 0;
  List pages = [
    const Homescreen(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Colors.black ,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectIndex,
        onTap: (value) {
          selectIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home_filled),
              icon: Icon(Icons.home),
              label: "Swan"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.label_rounded),
              icon: Icon(Icons.label),
              label: "Brands"),
          BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.settings),
              icon: Icon(CupertinoIcons.settings_solid),
              label: "Best Items"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.grid_view_outlined),
              icon: Icon(Icons.grid_view_outlined),
              label: "Categories"),
          BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.person),
              icon: Icon(Icons.person),
              label: "Account"),

        ],
      ),
    );
  }
}
