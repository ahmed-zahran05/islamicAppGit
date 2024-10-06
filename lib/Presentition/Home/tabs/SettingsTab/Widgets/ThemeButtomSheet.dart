import 'package:flutter/material.dart';

class ThemeButtomSheet extends StatelessWidget {
  const ThemeButtomSheet({super.key});

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
              Text("Light", style: Theme.of(context).textTheme.bodyLarge),
              const Icon(
                Icons.check,
              )
            ],
          ),
          Text(
            "Dark",
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
