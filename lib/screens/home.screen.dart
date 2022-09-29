import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:web_tv/screens/drawer.dart';
=======
import 'package:web_tv/utils/constants.util.dart';

>>>>>>> 1a1b61d2a0b2e1620a6b22b468d94b801b4b87cc

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      appBar: AppBar(),
      drawer: AppDrawer(),
      body: ListView(),
=======
    return Container(
      decoration: appGradient,
>>>>>>> 1a1b61d2a0b2e1620a6b22b468d94b801b4b87cc
    );
  }
}
