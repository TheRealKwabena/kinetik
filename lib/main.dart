import 'package:flutter/material.dart';
import 'package:kinetik/pages/splash_screen.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const KineTikApp());
}

class KineTikApp extends StatelessWidget {
  const KineTikApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
