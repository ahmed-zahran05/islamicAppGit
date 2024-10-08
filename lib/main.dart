import 'package:flutter/material.dart';
import 'package:islamicappgit/provider/SettingsProvider.dart';
import 'package:provider/provider.dart';

import 'Myapp.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: myapp(),
    ),
  );
}
