// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:doctor_chamber/Pages/Home/Data/data.dart';
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
                          height: 620.0,
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
                                DoctorAppointment(
                                  image: "assets/images/doctor_1.png",
                                  name: "Dr. Jenny Roy",
                                  job: "Heart Surgeon",
                                  time: "11:30 pm - 12: 30pm",
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                DoctorAppointment(
                                  image: "assets/images/doctor_2.png",
                                  name: "Dr. Zak Wolf",
                                  job: "Cardiologist",
                                  time: "10:30 pm - 11: 30pm",
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
                                DoctorAppointment(
                                  image: "assets/images/doctor_3.png",
                                  name: "Dr. Iva Karpenter",
                                  job: "Cardiologist",
                                  time: "09:30 pm - 10: 30pm",
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                DoctorAppointment(
                                  image: "assets/images/doctor_4.png",
                                  name: "Dr. Mayme Gomez",
                                  job: "Cardiologist",
                                  time: "10:30 pm - 11: 30pm",
                                ),

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
