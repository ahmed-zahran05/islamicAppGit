import 'package:flutter/material.dart';
import 'package:islamicappgit/Core/utills/StringsManager.dart';
import 'package:islamicappgit/Core/utills/assetsManager.dart';

import '../../../../Core/utills/ColorsManager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int Count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: const Image(
                image: AssetImage(
                  assetsmanager.BodySebhaImage,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                stringsmanager.Sebhalabel,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                color: Colorsmanager.GoldColor,
                child: Text("$Count"),
              )
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Count++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colorsmanager.GoldColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      alignment: Alignment.center),
                  child: Text(
                    stringsmanager.SebhaButton,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Count = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colorsmanager.GoldColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      alignment: Alignment.center),
                  child: Text(
                    "Reset Counter",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
