import 'package:flutter/material.dart';

import '../search_page.dart';

class TopDoctor extends StatelessWidget {
  const TopDoctor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffffffff),
        centerTitle: true,
        title: Text(
          ' Top Doctor',
          style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8.0),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "assets/images/grid_1.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "assets/images/grid_2.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "assets/images/grid_3.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "assets/images/grid_4.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "assets/images/grid_5.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "assets/images/grid_6.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "assets/images/grid_8.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
