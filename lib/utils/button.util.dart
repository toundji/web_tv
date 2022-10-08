// ignore_for_file: , prefer_const_constructors

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String text;
  final double width;
  final double height;
  final double elevation;
  final Color? fontColor;
  final String? fontFamily;
  final Function onPressed;

  const RoundedButton(
      {Key? key,
      required this.color,
      required this.text,
      required this.width,
      required this.onPressed,
      this.fontFamily,
      this.fontColor,
      this.elevation = 5.2,
      this.height = 35.5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Material(
        elevation: elevation,
        color: color,
        borderRadius: BorderRadius.circular(32.0),
        child: MaterialButton(
            elevation: elevation,
            onPressed: () {
              onPressed();
            },
            minWidth: width,
            height: height,
            child: Text(
              text,
              style: TextStyle(color: fontColor, fontSize: 15.0),
            )),
      ),
    );
  }
}

class AltRoundedButton extends StatelessWidget {
  final Function? press;
  final String? text;
  // ignore: non_constant_identifier_names
  final double? widthmultiplier;
  final String? ftfamily;
  final Color? color, textColor;
  final double? height;
  const AltRoundedButton(
      {Key? key,
      this.press,
      this.color,
      this.textColor,
      this.text,
      this.ftfamily,
      this.widthmultiplier,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      width: size.width * widthmultiplier!,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          // ignore: deprecated_member_use
          child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: height!, horizontal: 30),
            color: color,
            onPressed: () => press,
            child: Text(text!,
                style: TextStyle(color: textColor, fontFamily: ftfamily)),
          )),
    );
  }
}

class SimpleButton extends StatelessWidget {
  final Color color;
  final String text;
  final double width;
  final double height;
  final double elevation;
  final double radius;
  final centerText;
  final Color? fontColor;
  final String? fontFamily;
  final Function onPressed;

  const SimpleButton(
      {Key? key,
      required this.color,
      required this.text,
      required this.width,
      required this.onPressed,
      this.fontFamily,
      this.fontColor,
      this.elevation = 5.2,
      this.height = 35.5,
      this.centerText = false, required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 10.0),
      child: SizedBox(
        height: height,
        width: width,
        child: Material(
          elevation: elevation,
          color: color,
          borderRadius: BorderRadius.circular(radius),
          child: MaterialButton(
              elevation: elevation,
              onPressed: () {
                onPressed();
              },
              minWidth: width,
              height: height,
              child: Text(
                text,
                textAlign:
                    centerText == true ? TextAlign.center : TextAlign.left,
                style: TextStyle(color: fontColor, fontSize: 12.0),
              )),
        ),
      ),
    );
  }
}
