import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/home.screen.dart';


const appGradient = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topRight,
  ),
);

double iconSize = 20;

const bottomNavBarDecoration = NavBarDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topRight,
  ),
  borderRadius: BorderRadius.zero,
  colorBehindNavBar: Colors.black,
);

const appBarDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  ),
);

List<Widget> buildScreens() {
  return [
    HomeScreen(), 
    HomeScreen(), 
    HomeScreen(),
    HomeScreen(),
  ];
}

List<PersistentBottomNavBarItem> navBarsItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Icon(FontAwesomeIcons.house, size: 18),
      title: ("Accueil"),
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Icon(FontAwesomeIcons.basketShopping, size: 18),
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      title: ("Boutique"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 18),
      title: ("Recherche"),
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Icon(FontAwesomeIcons.solidUser, size: 18),
      title: ("Profil"),
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}
