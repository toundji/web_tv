import 'package:flutter/material.dart';
import 'package:web_tv/utils/constants.util.dart';
import 'app_bar.dart';
import 'drawer.dart';

class BaseScaffold extends StatefulWidget {
  final Widget scaffoldBody;
  final bool showAppBar;
  const BaseScaffold({Key? key, required this.scaffoldBody, this.showAppBar = false}) : super(key: key);

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      // drawer: AppDrawer(),
      // appBar: widget.showAppBar ? appBar() : null,
      body: Container(
          decoration: appGradient,
          child: Stack(
            children: [
              widget.scaffoldBody,
            ],
          )),
    );
  }
}
