import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:web_tv/utils/constants.util.dart';
import '../screens/communaute.screen.dart';
import '../screens/home.screen.dart';

List<Widget> buildScreens() {
  return [
    HomeScreen(),
    CommunauteScreen(),
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
      icon: Icon(FontAwesomeIcons.clockRotateLeft, size: 18),
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      title: ("Historique"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Icon(FontAwesomeIcons.circleInfo, size: 18),
      title: ("À Propos"),
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}
