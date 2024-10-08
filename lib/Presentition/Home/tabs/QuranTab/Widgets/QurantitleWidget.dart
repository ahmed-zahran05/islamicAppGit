import 'package:flutter/material.dart';

import '../../../../../Core/utills/RoutesManager.dart';

class QurantitleWidget extends StatelessWidget {
  String SurahTitle;
  String VersesNum;
  int index;

  QurantitleWidget(
      {required this.SurahTitle, required this.VersesNum, required this.index});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            RoutesManager.QuaranDetailsroute,
            arguments: SurahArgs(SurahName: SurahTitle, index: index),
          );
        },
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                SurahTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            VerticalDivider(
              thickness: 3,
              color: Theme.of(context).dividerColor,
            ),
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                VersesNum,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SurahArgs {
  String SurahName;
  int index;

  SurahArgs({required this.SurahName, required this.index});
}
