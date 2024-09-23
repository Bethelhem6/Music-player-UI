import 'package:flutter/material.dart'; 
import 'package:ui_challenge_1/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home:  SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
