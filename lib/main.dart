import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:laza/modules/on_borading/choose_gender_screen.dart';
import 'package:laza/shared/colors.dart';
import 'package:laza/shared/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset("assets/images/Logo.png"),
        nextScreen: const ChooseGender(),
        backgroundColor: tropicalIndigo,
      ),
    );
  }
}
