import 'package:flutter/material.dart';
import 'package:islamicappgit/Presentition/Home/tabs/SettingsTab/Widgets/ThemeButtomSheet.dart';

import 'Widgets/LanguageButtomSheet.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Theme",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(
              height: 4,
            ),
            InkWell(
              onTap: () {
                showThemeBottomSheet(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).dividerColor, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Light",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Language",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(
              height: 4,
            ),
            InkWell(
              onTap: () {
                showLanguageBottomSheet(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).dividerColor, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "English",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeButtomSheet(),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageButtomSheet(),
    );
  }
}
