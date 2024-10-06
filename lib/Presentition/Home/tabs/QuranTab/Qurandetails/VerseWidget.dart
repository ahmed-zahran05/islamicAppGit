import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String VerseItem;

  VerseWidget({super.key, required this.VerseItem});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Text(
            VerseItem,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}
