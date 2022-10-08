import 'package:flutter/material.dart';
import 'constants.util.dart';

AppBar appBar({String? title}) {
  return AppBar(
    title: Padding(
      padding: EdgeInsets.only(left: 4),
      child: Image.asset("assets/images/logo_jawuntaa.png"),
    ),
    flexibleSpace: Container(decoration: appGradient),
  );
}
