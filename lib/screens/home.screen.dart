import 'package:flutter/material.dart';
import '../utils/base_scaffold.util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String id = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
   return BaseScaffold(
      scaffoldBody: ListView(
        children: [
          Text(
            "Home",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.amber.withOpacity(0.75),
            ),
          ),
          Image.network("https://api.lorem.space/image/movie?w=150&h=220"),
        ],
      ),
    );
  }
}
