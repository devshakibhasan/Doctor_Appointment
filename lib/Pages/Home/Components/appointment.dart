// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../search_page.dart';

class appointment extends StatelessWidget {
  const appointment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff555FD2),
        centerTitle: true,
        title: Text(
          'Appointments',
          style: new TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Color(0xffE3EBF4),
        child: DefaultTabController(
          length: 1,
          child: TabBarView(
            children: [
              // This CustomScrollView display the Home tab content
              CustomScrollView(
                slivers: [
                  // Anther sliver widget: SliverList
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                          color: Color(0xffE3EBF4),
                          height: 1300,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Tody",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                // ignore: prefer_const_constructors
                                Image.asset('assets/images/dr.tanisha.png'),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset('assets/images/dr.zak.png'),
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  height: 10.0,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Yesterday",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                // ignore: prefer_const_constructors
                                Image.asset('assets/images/dr.jhonson.png'),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset('assets/images/dr.mayme.png'),
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  height: 10.0,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                // ignore: prefer_const_constructors
                                Image.asset('assets/images/dr.tanisha.png'),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset('assets/images/dr.zak.png'),
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  height: 10.0,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                // ignore: prefer_const_constructors
                                Image.asset('assets/images/dr.tanisha.png'),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset('assets/images/dr.zak.png'),
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  height: 10.0,
                                ),
                              ],
                            ),
                          ),
                        ),

                        // ignore: prefer_const_constructors
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
