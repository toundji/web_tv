import 'package:flutter/material.dart';
import 'package:web_tv/utils/app_bar.dart';
import 'package:web_tv/utils/drawer.dart';

import '../utils/constants.util.dart';

class CommunauteScreen extends StatefulWidget {
  const CommunauteScreen({super.key});

  @override
  State<CommunauteScreen> createState() => _CommunauteScreenState();
}

class _CommunauteScreenState extends State<CommunauteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appGradient,
    );
  }
}
