import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_tv/screens/communaute.screen.dart';
import 'package:web_tv/screens/home.screen.dart';
import 'package:web_tv/utils/app_layout.util.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(JawuntaaTvApp());
  });
}

class JawuntaaTvApp extends StatelessWidget {
  const JawuntaaTvApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jawuntaa Tv',
      home: AppLayout(),
      routes: {
        AppLayout.id: (context) => AppLayout(),
        HomeScreen.id: (context) => HomeScreen(),
        CommunauteScreen.id: (context) => CommunauteScreen()
      },
    );
  }
}
