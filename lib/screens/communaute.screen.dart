import 'package:flutter/material.dart';
import 'package:web_tv/utils/app_bar.dart';
import 'package:web_tv/utils/drawer.dart';

class CommunauteScreen extends StatefulWidget {
  const CommunauteScreen({super.key});

  @override
  State<CommunauteScreen> createState() => _CommunauteScreenState();
}

class _CommunauteScreenState extends State<CommunauteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: AppDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            "Communauté",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.amber.withOpacity(0.75),
            ),
          ),
          Container(
            child: Image.network(""),
          )
        ],
      ),
    );
  }
}
