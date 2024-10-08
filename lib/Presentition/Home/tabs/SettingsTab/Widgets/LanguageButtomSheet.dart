import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/SettingsProvider.dart';

class LanguageButtomSheet extends StatefulWidget {
  const LanguageButtomSheet({super.key});

  @override
  State<LanguageButtomSheet> createState() => _LanguageButtomSheetState();
}

class _LanguageButtomSheetState extends State<LanguageButtomSheet> {
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
              provider.ChangeAppLanguage(Locale('ar'));
            },
            child: provider.EnglishIsSelected()
                ? bulidSelectedlanguage(AppLocalizations.of(context)!.arabic)
                : bulidUnSelectedlanguage(AppLocalizations.of(context)!.arabic),
          ),
          const SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              provider.ChangeAppLanguage(Locale('en'));
            },
            child: provider.EnglishIsSelected()
                ? bulidSelectedlanguage(AppLocalizations.of(context)!.english)
                : bulidUnSelectedlanguage(
                    AppLocalizations.of(context)!.english),
          ),
        ],
      ),
    );
  }

  Widget bulidSelectedlanguage(String text) {
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

  Widget bulidUnSelectedlanguage(String text) {
    return Row(
      children: [
        Text(text, style: Theme.of(context).textTheme.labelMedium),
      ],
    );
  }
}
