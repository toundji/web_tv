import 'package:flutter/material.dart';
import 'package:web_tv/utils/app_layout.util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: AppLayout());
  }
}
