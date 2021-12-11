// ignore_for_file: sized_box_for_whitespace, prefer_final_fields, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

import 'Components/appointment.dart';
import 'Components/search.dart';
import 'Components/top_doctor.dart';
import 'search_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _pages = <Widget>[
    DefaultTabController(
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
                      color: Color(0xff555fd2),
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: [
                                // ignore: prefer_const_constructors
                                Align(
                                  alignment: Alignment.topLeft,
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    "Find your desired",
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                                // ignore: prefer_const_constructors
                                Align(
                                  alignment: Alignment.topLeft,
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    "Doctor Right Now!",
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Image.asset(
                                  'assets/images/Search.png',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // ignore: prefer_const_constructors

                    Container(
                      transform: Matrix4.translationValues(0.0, -60.0, 0.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            50.0,
                          ),
                          topRight: Radius.circular(
                            50.0,
                          ),
                        ),
                        color: Color(0xffE6EFF9),
                      ),
                      height: 580.0,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Catagories",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "See all",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Color(0xff555fd2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "assets/images/Group 61.png",
                                      width: 100.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "assets/images/Group 63.png",
                                      width: 100.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      "assets/images/Group 65.png",
                                      width: 100.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Top Doctors",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "See all",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Color(0xff555fd2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset('assets/images/heart_doc.png'),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset('assets/images/cardiologist.png'),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset('assets/images/orthopaedic.png'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    TopDoctor(),
    // ignore: avoid_unnecessary_containers
    SearchDoctor(),

    appointment(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff555FD2),
        centerTitle: true,
        title: Text(
          'Doctor Appointment',
          style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const SearchPage())),
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Container(
        color: Color(0xffE8F1FA),
        child: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20.0,
        selectedIconTheme: const IconThemeData(
          color: Color(0xff555FD2),
          size: 20.0,
        ),
        selectedItemColor: const Color(0xff555FD2),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: const Color(0xff122A19),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/logo/Group 51.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/logo/Vector.png'),
            label: 'Top Doctor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/logo/Vector(1).png'),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
