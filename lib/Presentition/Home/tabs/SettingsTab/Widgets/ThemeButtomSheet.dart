import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/SettingsProvider.dart';

class ThemeButtomSheet extends StatefulWidget {
  const ThemeButtomSheet({super.key});

  @override
  State<ThemeButtomSheet> createState() => _ThemeButtomSheetState();
}

class _ThemeButtomSheetState extends State<ThemeButtomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              provider.ChangeAppTheme(ThemeMode.light);
            },
            child: provider.currentTheme == ThemeMode.light
                ? bulidSelectedthemeitem(AppLocalizations.of(context)!.light)
                : bulidUnSelectedthemeitem(AppLocalizations.of(context)!.light),
          ),
          const SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              provider.ChangeAppTheme(ThemeMode.dark);
            },
            child: provider.currentTheme == ThemeMode.dark
                ? bulidSelectedthemeitem(AppLocalizations.of(context)!.dark)
                : bulidUnSelectedthemeitem(AppLocalizations.of(context)!.dark),
          )
        ],
      ),
    );
  }

  Widget bulidSelectedthemeitem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Theme.of(context).textTheme.bodyLarge),
        const Icon(
          Icons.check,
        )
      ],
    );
  }

  Widget bulidUnSelectedthemeitem(String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
