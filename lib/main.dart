import 'package:flutter/material.dart';
import 'package:monbac/views/welcome.dart';
import 'theme/colours.dart' as colours;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon BAC',
      locale: const Locale('fr', 'FR'),
      theme: ThemeData(
        primarySwatch: colours.bluePurple,
        fontFamily: 'Quicksand',
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Quicksand'),
          headline1: TextStyle(
              fontSize: 18.0, fontFamily: 'Quicksand', color: Colors.black),
        ),
      ),
      home: const WelcomeView(),
    );
  }
}
