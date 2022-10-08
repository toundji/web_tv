import 'package:flutter/material.dart';

class CustomDialogBox extends StatefulWidget {
  final Widget dialogContent;
  
  const CustomDialogBox({Key? key, required this.dialogContent}) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? animation;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    animation = CurvedAnimation(parent: controller!, curve: Curves.elasticInOut);
    controller!.addListener(() {
      setState(() {});
    });
    controller!.forward();
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation!,
      child: Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: widget.dialogContent
        ,)
      ),
    );
  }
}
