import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../views/Global.dart';

class Patlence extends StatefulWidget {
  const Patlence({Key? key}) : super(key: key);

  @override
  State<Patlence> createState() => _PatlenceState();
}

class _PatlenceState extends State<Patlence> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Patlence",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop('drawers');
          },
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              ...Global.patlenceList.map(
                (e) => Neumorphic(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    // width: 350,
                    // height: 470,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            "${e['images']}",
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 63,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/images/color-palette.png",
                                scale: 18,
                              ),
                              Image.asset(
                                "assets/images/copy.png",
                                scale: 18,
                              ),
                              Image.asset(
                                "assets/images/share.png",
                                scale: 18,
                              ),
                              Image.asset(
                                "assets/images/download.png",
                                scale: 18,
                              ),
                              Image.asset(
                                "assets/images/star.png",
                                scale: 18,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
