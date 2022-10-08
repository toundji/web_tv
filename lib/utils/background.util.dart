// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';

import 'constants.util.dart';

class Background extends StatelessWidget {
  final Widget child;
  final double height;
  const Background({Key? key, required this.child, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: height,
        constraints: BoxConstraints(maxWidth: maxWidth),
        decoration: backgroundDecoration.copyWith(
            borderRadius: BorderRadius.circular(padding),
            color: Color.fromARGB(255, 158, 153, 153)),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            child,
          ],
        ),
      ),
    );
  }
}
