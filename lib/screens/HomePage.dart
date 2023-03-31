import 'dart:async';

import 'package:flutter/material.dart';
import 'package:life_quotes_and_sayings_flutter/screens/Drawers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int l = 0;

  @override
  void initState() {
    l = 0;
    Timer.periodic(Duration(seconds: 3), (Timer l) {
      return get();
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            "assets/icons/notification.png",
            scale: 18,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () {
              setState(() {
                Scaffold.of(context).openDrawer();
              });
            },
            child: Image.asset(
              "assets/icons/Menu.png",
              scale: 18,
            ),
          ),
        ),
        title: Text(
          "Life Quotes and Sayings",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      drawer: Drawers(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              width: 500,
              height: 180,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: IndexedStack(
                  index: l,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          "assets/images/i2.jpg",
                        ),
                        Text(
                          " So often we quit on\n the first failure.we\nmust persistent long\n enough to achieve",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          child: Image.asset(
                            "assets/images/image_optimzation.jpg",
                          ),
                        ),
                        Text(
                          "   Never let anyone be\n your priority if you are\n   only their option.",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          "assets/images/hdr2.jpg",
                        ),
                        Text(
                          "   There's no worse\n   feeling than that\n  millisecond you're\n sure you are going to",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 85,
                      height: size.height,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffdd3e54),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/icons/i.menu.png",
                              scale: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Categories"),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 85,
                      height: size.height,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/icons/image.png",
                              scale: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Pic Quotes"),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: size.height,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffffe000),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/icons/new.png",
                              scale: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Latest Quotes"),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 85,
                      height: size.height,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/icons/book.png",
                              scale: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Articles"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              width: size.width,
              child: Text(
                "Most Popular",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              height: 155,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 10,
                  ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('happinessQuotes');
                },
                child:Container(
                    width: 175,
                    height: size.height,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/Happiness.jpeg",
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Happiness Quotes",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),),
                  SizedBox(
                    width: 3,
                  ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('love');
                },
                child:Container(
                    width: 175,
                    height: size.height,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/love.jpg",
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Love Quotes",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              height: 155,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 10,
                  ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context,'patlence');
                },
                child:Container(
                    width: 175,
                    height: size.height,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/clement-perrette-patience.jpeg",
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Patience Quotes",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),),
                  SizedBox(
                    width: 3,
                  ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('life');
                },
                child:Container(
                    width: 175,
                    height: size.height,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/life.jpg",
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Life Quotes",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              width: size.width,
              child: Text(
                "Most Popular",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              height: 155,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('attitude');
                    },
                    child:Container(
                      width: 175,
                      height: size.height,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/attitude.jpeg",
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Attitude Quotes",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),),
                  SizedBox(
                    width: 3,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('hope');
                    },
                    child:Container(
                      width: 175,
                      height: size.height,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/Forgiveness.jpg",
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Hope Quotes",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              height: 155,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('courage');
                    },
                    child:Container(
                      width: 175,
                      height: size.height,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/Courage.jpg",
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Courage Quotes",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),),
                  SizedBox(
                    width: 3,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'humor');
                    },
                    child:Container(
                      width: 175,
                      height: size.height,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/Humor.jpeg",
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Humor Quotes",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  get() {
    setState(() {
      if (l == 0) {
        l = 1;
      } else if (l == 1) {
        l = 2;
      } else if (l == 2) {
        l = 0;
      }
    });
  }
}
