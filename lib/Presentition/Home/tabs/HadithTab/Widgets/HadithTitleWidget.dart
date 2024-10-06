import 'package:flutter/material.dart';

import '../../../../../Core/utills/RoutesManager.dart';
import '../HadithTab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithItem hadith;

  HadithTitleWidget({required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.HadithDetailsroute,
          arguments: hadith,
        );
      },
      child: Container(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            hadith.title,
            textAlign: TextAlign.center,
            style:
                Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
