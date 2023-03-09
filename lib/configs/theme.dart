import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  // useMaterial3: true,
  primaryColor: const Color(0xffE5E5E5),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xffFFD600),
    tertiary: const Color(0xff4A4A4A),
    error: Colors.red,
  ),
  focusColor: const Color(0xffFFD600), // instead of button color
  indicatorColor: const Color(0xff9EA3A2),
  hintColor: const Color(0xff303030),
  highlightColor: const Color(0xff909BFF),

  // disabledColor: const Color(0xffDFDFDF),
  // shadowColor: const Color(0xff000000),
  // drawerTheme: const DrawerThemeData(backgroundColor: Color(0xff280035)),
  cardTheme: const CardTheme(
      color: Color(0xffFBFBFB), shadowColor: Color(0xff000000), elevation: 15),
  fontFamily: "TT Norms Pro",
  textTheme: const TextTheme(
    displaySmall: TextStyle(color: Colors.white, fontSize: 16),
    // headlineLarge: TextStyle(
    //     color: Color(0xff531255), fontSize: 24, fontFamily: "IBMPlexSans"),
    // headlineMedium: TextStyle(
    //     color: Color(0xff531255), fontSize: 22, fontFamily: "IBMPlexSans"),
    // headlineSmall: TextStyle(
    //     color: Color(0xff531255), fontSize: 18, fontFamily: "IBMPlexSans"),
    titleLarge: TextStyle(color: Color(0xff5F5F5F), fontSize: 24),
    titleMedium: TextStyle(color: Color(0xff5F5F5F), fontSize: 20),
    titleSmall: TextStyle(color: Color(0xff5F5F5F), fontSize: 13),
    // bodyLarge: TextStyle(color: Color(0xff4A4A4A), fontSize: 18),
    bodyMedium: TextStyle(color: Color(0xff243448), fontSize: 14),
    bodySmall: TextStyle(color: Color(0xff9EA3A2), fontSize: 12),
    // labelLarge: TextStyle(color: Color(0xffB0BAC9), fontSize: 18),
    labelMedium: TextStyle(color: Color(0xff333333), fontSize: 16),
    labelSmall: TextStyle(color: Color(0xff333333), fontSize: 13),
  ),
);

