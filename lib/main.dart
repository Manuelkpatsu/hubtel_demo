import 'package:flutter/material.dart';

import 'screens/main_app.dart';
import 'theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hubtel Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.theme,
      home: const MainApp(),
    );
  }
}
