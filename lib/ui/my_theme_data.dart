import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimaryColor = Color(0xffB7935F);
  static const Color darkPrimaryColor = Color(0xff141A2E);
  static const Color mainLightTextColor = Color(0xff242424);
  static const Color mainDarkTextColor = Color(0xffF8F8F8);
  static const Color darkAccsentColor = Color(0xffFACC1D);
  static var lightTheme = ThemeData(
      cardColor: const Color(0xccffffff),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        elevation: 20,
      ),
      primaryColor: lightPrimaryColor,
      canvasColor: lightPrimaryColor,
      textTheme: const TextTheme(
          displayMedium: TextStyle(
            fontSize: 30,
            color: mainLightTextColor,
          ),
          headlineSmall: TextStyle(
              fontSize: 24, color: mainLightTextColor, fontFamily: 'ElMessiri'),
          bodyLarge: TextStyle(
            fontSize: 24,
            color: mainLightTextColor,
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            color: mainLightTextColor,
            fontFamily: 'Decotype',
          ),
          bodySmall: TextStyle(
            fontSize: 20,
            color: mainLightTextColor,
            fontFamily: 'Decotype',
          )),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: mainLightTextColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri')),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Color(0xff242424),
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontFamily: 'JF'),
        unselectedIconTheme: IconThemeData(size: 25),
        selectedIconTheme: IconThemeData(size: 30),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Color(0xffDBD9D9),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ))));
  static var darkTheme = ThemeData(
      cardColor: darkPrimaryColor,
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        elevation: 20,
      ),
      primaryColor: darkPrimaryColor,
      canvasColor: darkAccsentColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
              color: mainDarkTextColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri')),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: darkAccsentColor,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontFamily: 'JF'),
        unselectedIconTheme: IconThemeData(size: 25),
        selectedIconTheme: IconThemeData(size: 30),
      ),
      textTheme: const TextTheme(
          displayMedium: TextStyle(
            fontSize: 30,
            color: mainDarkTextColor,
          ),
          headlineSmall: TextStyle(
              fontSize: 24, color: mainDarkTextColor, fontFamily: 'ElMessiri'),
          bodyLarge: TextStyle(
            fontSize: 24,
            color: mainDarkTextColor,
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            color: darkAccsentColor,
            fontFamily: 'Decotype',
          ),
          bodySmall: TextStyle(
            fontSize: 20,
            color: mainDarkTextColor,
            fontFamily: 'Decotype',
          )),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: darkPrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ))));
}
