import 'package:flutter/material.dart';
import 'package:islamicappgit/Core/utills/StringsManager.dart';
import 'package:islamicappgit/Core/utills/assetsManager.dart';
import 'package:islamicappgit/Presentition/Home/tabs/RadioTab/RadioTab.dart';
import 'package:islamicappgit/Presentition/Home/tabs/SebhaTab/SebhaTab.dart';
import 'package:islamicappgit/Presentition/Home/tabs/SettingsTab/SettingsTab.dart';

import 'tabs/HadithTab/HadithTab.dart';
import 'tabs/QuranTab/QuranTab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int Selectedindex = 0;

  List<Widget> tabs = [
    Qurantab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetsmanager.LightMainBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(stringsmanager.HomeAppBarTitle),
        ),
        body: tabs[Selectedindex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: Selectedindex,
            onTap: (index) {
              Selectedindex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1),
                  icon: ImageIcon(AssetImage(assetsmanager.Quran_Icon)),
                  label: stringsmanager.Quranlabel),
              BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1),
                  icon: ImageIcon(AssetImage(assetsmanager.Ahadeth_Icon)),
                  label: stringsmanager.Ahadithlabel),
              BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1),
                  icon: ImageIcon(AssetImage(assetsmanager.Sebha_Icon)),
                  label: stringsmanager.Tasbehlabel),
              BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1),
                  icon: ImageIcon(AssetImage(assetsmanager.Radio_Icon)),
                  label: stringsmanager.Radiolabel),
              BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1),
                  icon: Icon(Icons.settings),
                  label: stringsmanager.Settingslabel),
            ]),
      ),
    );
  }
}
