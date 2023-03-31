import 'package:flutter/material.dart';
import 'package:life_quotes_and_sayings_flutter/screens/Attitude.dart';
import 'package:life_quotes_and_sayings_flutter/screens/Courage.dart';
import 'package:life_quotes_and_sayings_flutter/screens/Drawers.dart';
import 'package:life_quotes_and_sayings_flutter/screens/Happiness%20Quotes.dart';
import 'package:life_quotes_and_sayings_flutter/screens/HomePage.dart';
import 'package:life_quotes_and_sayings_flutter/screens/Hope.dart';
import 'package:life_quotes_and_sayings_flutter/screens/Humor.dart';
import 'package:life_quotes_and_sayings_flutter/screens/Item.dart';
import 'package:life_quotes_and_sayings_flutter/screens/Life.dart';
import 'package:life_quotes_and_sayings_flutter/screens/Love.dart';
import 'package:life_quotes_and_sayings_flutter/screens/Patlence.dart';
import 'package:life_quotes_and_sayings_flutter/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'splashscreen',
      routes: {
        '/': (context) => const HomePage(),
        'splashscreen': (context) => const Splashscreen(),
        'itemall': (context) => const Itemall(),
        'drawers': (context) => const Drawers(),
        'happinessQuotes': (context) => const HappinessQuotes(),
        'love': (context) => const Love(),
        'life': (context) => const Life(),
        'attitude': (context) => const Attitude(),
        'courage': (context) => const Courage(),
        'patlence': (context) => const Patlence(),
        'hope': (context) => const Hope(),
        'humor': (context) => const Humor(),
      },
    );
  }
}
