import 'package:flutter/material.dart';
import 'package:islamicappgit/Config/theme/Theme.dart';

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
    return MaterialApp(
      theme: themeeee.MYlightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.Homeroute: (_) => HomeScreen(),
        RoutesManager.HadithDetailsroute: (_) => HadithDetails(),
        RoutesManager.Splashroute: (_) => SplashScreen(),
        RoutesManager.QuaranDetailsroute: (_) => QuranDetailsScreen(),
        RoutesManager.Hadithroute: (_) => HadithTab(),
        RoutesManager.Sebhatabroute: (_) => SebhaTab(),
      },
      initialRoute: RoutesManager.Splashroute,
    );
  }
}
