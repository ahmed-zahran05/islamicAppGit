import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/SettingsProvider.dart';
import '../HadithTab.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    HadithItem hadith =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            provider.getBackgroundImage(),
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title:
              Text(hadith.title, style: Theme.of(context).textTheme.titleSmall),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: SingleChildScrollView(
                child: Text(hadith.content,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.displayMedium),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
