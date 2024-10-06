import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicappgit/Core/utills/assetsManager.dart';

import '../../../../../Core/utills/ColorsManager.dart';
import '../Widgets/QurantitleWidget.dart';
import 'VerseWidget.dart';

class QuranDetailsScreen extends StatefulWidget {
  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> Verses = [];

  @override
  Widget build(BuildContext context) {
    SurahArgs args = ModalRoute.of(context)?.settings.arguments as SurahArgs;
    if (Verses.isEmpty) readfile(args.index);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(assetsmanager.LightMainBg), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.SurahName,
              style: Theme.of(context).textTheme.titleSmall),
        ),
        body: Verses.isEmpty
            ? const Center(
                child:
                    CircularProgressIndicator(color: Colorsmanager.GoldColor),
              )
            : ListView.builder(
                itemBuilder: (context, index) =>
                    VerseWidget(VerseItem: Verses[index]),
                itemCount: Verses.length),
      ),
    );
  }

  void readfile(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/Files/${index + 1}.txt");
    var FileLines = fileContent.split("\n");
    Verses = FileLines;
    setState(() {});
  }
}
