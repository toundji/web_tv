import 'constants.util.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.only(left: 1, right: 1, top: 13),
        width: size.width * 0.4,
        height: size.width * 0.06,
        decoration: BoxDecoration(
            color: Color.fromARGB(195, 230, 221, 221), borderRadius: BorderRadius.circular(7)),
        child: child);
  }
}