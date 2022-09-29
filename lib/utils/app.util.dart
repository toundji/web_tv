import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:web_tv/utils/app_layout.util.dart';


class AppUtils {
  static void goToScreen(BuildContext context, Widget screen) {
    Navigator.pop(context);
    PersistentNavBarNavigator.pushNewScreen(
      context,
      screen: (screen is AppLayout) ? screen : AppLayout(initialScreen: screen,),
      withNavBar: true,
      pageTransitionAnimation: PageTransitionAnimation.cupertino,
    );
  }
}
