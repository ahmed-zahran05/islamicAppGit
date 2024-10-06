import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicappgit/Core/utills/assetsManager.dart';

import 'Widgets/HadithHeader.dart';
import 'Widgets/HadithTitleWidget.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<HadithItem> allHadithList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadithList.isEmpty) ReadAhadith();
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Image(
              image: AssetImage(assetsmanager.HadithImage),
            ),
          ),
          HadithHeader(),
          Expanded(
            flex: 3,
            child: ListView.separated(
              separatorBuilder: (context, index) => Container(
                color: Theme.of(context).dividerColor,
                margin: EdgeInsets.symmetric(horizontal: 40),
                height: 3,
              ),
              itemBuilder: (context, index) => HadithTitleWidget(
                hadith: allHadithList[index],
              ),
              itemCount: allHadithList.length,
            ),
          ),
        ],
      ),
    );
  }

  void ReadAhadith() async {
    String AllAhadith = await rootBundle.loadString("assets/Files/ahadeth.txt");
    List<String> HadithItemlist = AllAhadith.split("#");

    for (var Hadith in HadithItemlist) {
      List<String> HadithLines = Hadith.trim().split("\n");

      String TitleOfHadith = HadithLines[0];
      HadithLines.removeAt(0);
      String HadithContent = HadithLines.join('\n');
      HadithItem hadithItem =
          HadithItem(title: TitleOfHadith, content: HadithContent);
      allHadithList.add(hadithItem);
    }
    setState(() {});
  }
}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}
