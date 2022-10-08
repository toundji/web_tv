// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:web_tv/utils/responsive.util.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.08,
      width: size.width * 0.8,
      padding: EdgeInsets.only(left: 1, right: 1, top: 13),
      decoration: BoxDecoration(
            color: Color.fromARGB(195, 230, 221, 221), borderRadius: BorderRadius.circular(7)),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        child: child);
  }
}
