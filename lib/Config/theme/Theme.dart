import 'package:flutter/material.dart';

import '../../Core/utills/ColorsManager.dart';

class themeeee {
  static final ThemeData MYlightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colorsmanager.Daarkblue),
    primaryColor: Colorsmanager.GoldColor,
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
        displayMedium: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        labelMedium: TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
        bodySmall: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
        displaySmall: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w500,
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
    iconTheme: const IconThemeData(color: Colorsmanager.GoldColor, size: 30),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      elevation: 18,
      backgroundColor: Colors.white,
    ),
  );
  static final ThemeData MYDarkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colorsmanager.Daarkblue,
        primary: Colorsmanager.Daarkblue,
        onPrimary: Colorsmanager.YellowColor),
    primaryColor: Colorsmanager.Daarkblue,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
    ),
    cardTheme: CardTheme(
      color: Colorsmanager.Daarkblue,
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(8),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showUnselectedLabels: false,
        selectedItemColor: Colorsmanager.YellowColor,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        elevation: 20,
        selectedIconTheme: IconThemeData(
          size: 36,
        )),
    dividerColor: Colorsmanager.YellowColor,
    textTheme: const TextTheme(
        titleSmall: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          fontSize: 20,
          color: Colorsmanager.YellowColor,
          fontWeight: FontWeight.w400,
        ),
        labelMedium: TextStyle(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
        bodySmall: TextStyle(
          color: Colorsmanager.YellowColor,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: Colorsmanager.YellowColor,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colorsmanager.YellowColor)),
    iconTheme: const IconThemeData(color: Colorsmanager.YellowColor, size: 30),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      elevation: 18,
      backgroundColor: Colorsmanager.Daarkblue,
    ),
  );
}
