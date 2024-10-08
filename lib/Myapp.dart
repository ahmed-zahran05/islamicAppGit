import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamicappgit/Config/theme/Theme.dart';
import 'package:islamicappgit/provider/SettingsProvider.dart';
import 'package:provider/provider.dart';

import '../Presentition/Home/HomeScreen.dart';
import 'Core/utills/RoutesManager.dart';
import 'Presentition/Home/tabs/HadithTab/HadithDetails/HadithDetailsScreen.dart';
import 'Presentition/Home/tabs/HadithTab/HadithTab.dart';
import 'Presentition/Home/tabs/QuranTab/Qurandetails/QuranDetailsScreen.dart';
import 'Presentition/Home/tabs/SebhaTab/SebhaTab.dart';
import 'Presentition/Splash/SplashScreen.dart';

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('ar', ''), // Arabic
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: provider.currentLocale,
      theme: themeeee.MYlightTheme,
      darkTheme: themeeee.MYDarkTheme,
      themeMode: provider.currentTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.Homeroute: (_) => HomeScreen(),
        RoutesManager.HadithDetailsroute: (_) => const HadithDetails(),
        RoutesManager.Splashroute: (_) => SplashScreen(),
        RoutesManager.QuaranDetailsroute: (_) => QuranDetailsScreen(),
        RoutesManager.Hadithroute: (_) => HadithTab(),
        RoutesManager.Sebhatabroute: (_) => const SebhaTab(),
      },
      initialRoute: RoutesManager.Splashroute,
    );
  }
}
