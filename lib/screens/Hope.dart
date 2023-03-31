import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../views/Global.dart';

class Hope extends StatefulWidget {
  const Hope({Key? key}) : super(key: key);

  @override
  State<Hope> createState() => _HopeState();
}

class _HopeState extends State<Hope> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Hope",
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
          child: Icon(
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
              SizedBox(
                height: 15,
              ),
              ...Global.hopeList.map(
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
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset("${e['images']}"),
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
