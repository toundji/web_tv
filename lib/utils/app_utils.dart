import 'package:flutter/material.dart';

class AppUtils {
  static void goToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return screen;
    }));
  }
}
