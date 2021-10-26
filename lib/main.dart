import 'package:flutter/material.dart';
import 'package:floricultura/src/Windows/registre.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.copyWith(
        primaryColor: Colors.pink, // DEPRECATED WAY
        accentColor: Colors.red, // DEPRECATED WAY
        colorScheme: theme.colorScheme.copyWith(
          secondary: Colors.red, // NEW WAY
          primary: Colors.pink, // NEW WAY
        ),
      ),
      home: MyHomePage(),
    );
  }
}
