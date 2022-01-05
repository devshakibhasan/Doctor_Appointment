// ignore_for_file: sized_box_for_whitespace, prefer_final_fields, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:doctor_chamber/Pages/Home/Components/doctor_list.dart';
import 'package:flutter/material.dart';
import 'Components/appointment.dart';
import 'Components/catagories.dart';
import 'Components/profile.dart';
import 'Components/search.dart';
import 'Components/top_container.dart';
import 'Components/top_doctor.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  late BuildContext context;
  List<Widget> _pages = <Widget>[
    DefaultTabController(
      length: 1,
      child: TabBarView(
        children: [
          // This CustomScrollView display the Home tab content
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                elevation: 0.0,
                backgroundColor: const Color(0xff555FD2),
                centerTitle: true,
                title: Column(
                  children: [
                    Text(
                      'Current Location',
                      // ignore: unnecessary_new
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Dhaka',
                      // ignore: unnecessary_new
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                  ),
                ],
              ), // Anther sliver widget: SliverList
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    TopContainer(),
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
                      height: 780.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 15.0,
                          left: 10.0,
                          right: 10.0,
                        ),
                        child: Column(
                          children: [
                            Catagories(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  DoctorList(
                                    image: "assets/images/doctor_1.png",
                                    name: "Dr. Jenny Roy",
                                    job: "Heart Surgeon",
                                    price: "500tk",
                                  ),
                                  DoctorList(
                                    image: "assets/images/doctor_2.png",
                                    name: "Dr. Zak Wolf",
                                    job: "Cardiologist",
                                    price: "600tk",
                                  ),
                                  DoctorList(
                                    image: "assets/images/doctor_3.png",
                                    name: "Dr. Iva Karpenter",
                                    job: "Cardiologist",
                                    price: "600tk",
                                  ),
                                  DoctorList(
                                    image: "assets/images/doctor_4.png",
                                    name: "Dr. Mayme Gomez",
                                    job: "Dentist",
                                    price: "600tk",
                                  ),
                                  DoctorList(
                                    image: "assets/images/doctor_1.png",
                                    name: "Dr. Jenny Roy",
                                    job: "Heart Surgeon",
                                    price: "500tk",
                                  ),
                                ],
                              ),
                            ),
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

    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
