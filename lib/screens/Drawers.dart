import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/Global.dart';

class Drawers extends StatefulWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.pink.shade300,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Like Quotes and",
                    style: GoogleFonts.dancingScript(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Sayings",
                    style: GoogleFonts.dancingScript(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                    children:[
                      ...Global.itemList.map(
                            (e) =>
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('itemall', arguments: e);
                              },
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    width: 380,
                                    height: 50,
                                    child: Row(
                                      children: [
                                        Image.asset("${e['images']}",scale: 20,),
                                        SizedBox(width: 10,),
                                        Text("${e['title']}"),
                                      ],
                                    )
                                ),
                              ),
                            ),
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
