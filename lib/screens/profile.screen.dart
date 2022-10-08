import 'package:flutter/material.dart';
import 'package:web_tv/utils/base_scaffold.util.dart';
import 'package:web_tv/utils/profile_widget.util.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(scaffoldBody: ProfileWidget());
  }
}
