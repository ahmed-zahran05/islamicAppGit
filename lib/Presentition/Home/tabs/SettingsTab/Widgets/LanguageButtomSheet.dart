import 'package:flutter/material.dart';
import 'package:islamicappgit/Core/utills/ColorsManager.dart';

class LanguageButtomSheet extends StatelessWidget {
  const LanguageButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English", style: Theme.of(context).textTheme.bodyLarge),
              const Icon(
                Icons.check,
                size: 30,
                color: Colorsmanager.GoldColor,
              )
            ],
          ),
          Text(
            "Arabic",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
