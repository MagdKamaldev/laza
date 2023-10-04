import 'package:flutter/material.dart';
import 'package:laza/shared/colors.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: antiFlashWhite,
  appBarTheme: AppBarTheme(backgroundColor: antiFlashWhite),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  textTheme: TextTheme(
    bodyLarge: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: "Inter",
        color: Colors.black),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: "Inter",
      decorationColor: cadetGrey,
    ),
  ),
  useMaterial3: true,
);
