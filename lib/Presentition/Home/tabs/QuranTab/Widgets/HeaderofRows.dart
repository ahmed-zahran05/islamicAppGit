import 'package:flutter/material.dart';
import 'package:islamicappgit/Core/utills/StringsManager.dart';

import '../../../../../Core/utills/ColorsManager.dart';

class HeaderofRows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(color: Colorsmanager.GoldColor, width: 2))),
      child: IntrinsicHeight(
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  stringsmanager.QuarnTapheader,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 20),
                ),
              ),
            ),
            const VerticalDivider(
              thickness: 3,
              color: Colorsmanager.GoldColor,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  textAlign: TextAlign.center,
                  stringsmanager.NumOfVerses,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
