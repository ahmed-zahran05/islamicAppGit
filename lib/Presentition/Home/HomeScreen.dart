import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamicappgit/Core/utills/assetsManager.dart';
import 'package:islamicappgit/Presentition/Home/tabs/RadioTab/RadioTab.dart';
import 'package:islamicappgit/Presentition/Home/tabs/SebhaTab/SebhaTab.dart';
import 'package:islamicappgit/Presentition/Home/tabs/SettingsTab/SettingsTab.dart';
import 'package:provider/provider.dart';

import '../../provider/SettingsProvider.dart';
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
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            provider.getBackgroundImage(),
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        body: tabs[Selectedindex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor,
          ),
          child: BottomNavigationBar(
              currentIndex: Selectedindex,
              onTap: (index) {
                Selectedindex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(assetsmanager.Quran_Icon)),
                  label: AppLocalizations.of(context)!.quranTap,
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(assetsmanager.Ahadeth_Icon)),
                    label: AppLocalizations.of(context)!.hadithTap),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(assetsmanager.Sebha_Icon)),
                    label: AppLocalizations.of(context)!.tasbehTap),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(assetsmanager.Radio_Icon)),
                    label: AppLocalizations.of(context)!.radioTap),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settingsTap),
              ]),
        ),
      ),
    );
  }
}
