import 'package:flutter/material.dart';
import 'package:web_tv/utils/constants.util.dart';
import 'app_bar.dart';
import 'drawer.dart';
import 'sidebar.util.dart';

class BaseScaffold extends StatefulWidget {
  final Widget scaffoldBody;
  const BaseScaffold({Key? key, required this.scaffoldBody}) : super(key: key);

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      drawer: AppDrawer(),
      appBar: appBar(),
      body: Container(
        decoration: appGradient,
        child: Stack(
          children: [
            widget.scaffoldBody,
          ],
        )
      ),
    );
  }
}
