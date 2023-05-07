import 'package:book_me/configs/screen_size_config/screen_size_config.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

final bookme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: themeColor,
  iconTheme: const IconThemeData(color: Colors.white),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    unselectedItemColor: Colors.black,
    selectedItemColor: themeColor,
    selectedIconTheme: IconThemeData(color: themeColor, size: 32),
    unselectedIconTheme: IconThemeData(color: Colors.black, size: 32),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10,
    ),
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10,
    ),
  ),
  colorScheme: const ColorScheme(
      primary: themeColor,
      primaryContainer: themeColor,
      secondary: Color(0xfff7b712),
      secondaryContainer: Color(0xfff7b712),
      tertiary: Color(0xff006ce3),
      tertiaryContainer: Color(0xff006ce3),
      surface: Colors.white54,
      background: Colors.white,
      error: Color(0xffEE1E1D),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Color(0xffEE1E1D),
      brightness: Brightness.light),
  appBarTheme: const AppBarTheme(
      elevation: 0,
      color: themeColor,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
          fontSize: 22.0, fontWeight: FontWeight.w700, color: Colors.white)),
  fontFamily: 'Poppins',
  // buttonTheme: const ButtonThemeData(
  //
  // ),
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: themeColor),
    headline2: TextStyle(
        fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.w700),
    headline3: TextStyle(
        fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black),
    headline4: TextStyle(
      fontSize: 16.0,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
    headline5: TextStyle(
        fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
    headline6: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    bodyText1: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
    ),
    bodyText2: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
    caption: TextStyle(
        color: Colors.black, fontSize: 8.0, fontWeight: FontWeight.w400),
    button: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
    overline: TextStyle(fontSize: 16, letterSpacing: 0),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(fontSize: 14, color: Color(0xff858585)),
    labelStyle: TextStyle(color: themeColor),
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
  ),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
  }),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)))),
);
