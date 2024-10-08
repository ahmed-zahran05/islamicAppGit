import 'package:flutter/material.dart';
import 'package:islamicappgit/Core/utills/assetsManager.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  Locale currentLocale = Locale('en');

  void ChangeAppTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  void ChangeAppLanguage(Locale newLanguage) {
    if (newLanguage == currentLocale) return;
    currentLocale = newLanguage;
    notifyListeners();
  }

  String getBackgroundImage() {
    return currentTheme == ThemeMode.light
        ? assetsmanager.LightMainBg
        : assetsmanager.DarkMainBg;
  }

  bool EnglishIsSelected() {
    return currentLocale == 'en';
  }

  bool ArabicIsSelected() {
    return currentLocale == 'ar';
  }
}
