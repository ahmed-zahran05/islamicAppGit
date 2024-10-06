import 'package:flutter/material.dart';
import 'package:islamicappgit/Core/utills/StringsManager.dart';

class HadithHeader extends StatelessWidget {
  const HadithHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 3,
          ),
        ),
      ),
      child: Text(
        stringsmanager.AhadithHeadername,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 30,
            ),
      ),
    );
  }
}
