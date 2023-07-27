import 'package:flutter/material.dart';

import 'app.dart';

void main() {

  runApp(const MyApp());
}

// ignore: constant_identifier_names
const SeedColor = Color(0xFFEAA4A4);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'slackApiFlutter',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: SeedColor,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: SeedColor,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
    );
  }
}
