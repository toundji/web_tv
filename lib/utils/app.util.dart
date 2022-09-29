import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';


class AppUtils {
  static void goToScreen(BuildContext context, Widget screen) {
    PersistentNavBarNavigator.pushNewScreen(
      context,
      screen: screen,
      withNavBar: true,
      pageTransitionAnimation: PageTransitionAnimation.cupertino,
    );
  }
}
