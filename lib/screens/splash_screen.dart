import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:life_quotes_and_sayings_flutter/screens/HomePage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {
  List Players = [
    'assets/spimages/shared_image.jpeg',
    'assets/spimages/Screenshot_20230320_142907_Life Quotes and Sayings.jpg',
    'assets/spimages/Screenshot_20230320_142855_Life Quotes and Sayings.jpg',
    'assets/spimages/Screenshot_20230320_142837_Life Quotes and Sayings.jpg',
    'assets/spimages/4i.jpg',
    'assets/spimages/5i.jpg',
    'assets/spimages/6i.jpg',
    'assets/spimages/7i.jpg',
  ];

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4,), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final images = Random().nextInt(7);
    print(images);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Image.asset(
          "${Players[images + 1]}",
        ),
      ),
    );
  }
}
