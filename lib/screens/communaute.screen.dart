import 'package:flutter/material.dart';
import 'package:web_tv/utils/base_scaffold.util.dart';

class CommunauteScreen extends StatefulWidget {
  const CommunauteScreen({super.key});

  static String id = "communaute_screen";

  @override
  State<CommunauteScreen> createState() => _CommunauteScreenState();
}

class _CommunauteScreenState extends State<CommunauteScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      showAppBar: true,
      scaffoldBody: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            "Communauté",
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
