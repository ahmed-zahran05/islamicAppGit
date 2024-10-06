import 'package:flutter/material.dart';
import 'package:islamicappgit/Core/utills/assetsManager.dart';

import '../../Core/utills/RoutesManager.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, RoutesManager.Homeroute);
      },
    );
    return const Scaffold(
      body: Image(
          image: AssetImage(assetsmanager.LightSplashScreen),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill),
    );
  }
}
