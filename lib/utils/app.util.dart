import 'package:flutter/material.dart';
import 'package:web_tv/screens/communaute.screen.dart';

class AppUtils {
  static void goToScreen(BuildContext context, Widget screen) {
    // PersistentNavBarNavigator.pushNewScreen(
    //   context,
    //   screen: screen,
    //   withNavBar: true,
    //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
    // );
    Navigator.pushNamed(context, CommunauteScreen.id);
  }
}
