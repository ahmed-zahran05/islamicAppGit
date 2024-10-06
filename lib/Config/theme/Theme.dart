import 'package:flutter/material.dart';

import '../../Core/utills/ColorsManager.dart';

class themeeee {
  static final ThemeData MYlightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(8),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        elevation: 20,
        selectedIconTheme: IconThemeData(
          size: 36,
        )),
    dividerColor: Colorsmanager.GoldColor,
    textTheme: const TextTheme(
        titleSmall: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.w700),
        bodySmall: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colorsmanager.GoldColor)),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      elevation: 18,
      backgroundColor: Colors.white,
    ),
  );
}
