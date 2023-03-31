

import 'package:flutter/material.dart';

class Itemall extends StatefulWidget {
  const Itemall({Key? key}) : super(key: key);

  @override
  State<Itemall> createState() => _ItemallState();
}

class _ItemallState extends State<Itemall> {
  @override
  Widget build(BuildContext context) {
    Map e = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop('drawers');
          },
          child: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title: Text(
          "${e['name']}",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
