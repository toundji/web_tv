import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

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