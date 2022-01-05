// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:doctor_chamber/Pages/Home/Components/top_doctor.dart';
import 'package:flutter/material.dart';

import 'Dentist.dart';
import 'Heart Surgeon.dart';
import 'Cardiologist.dart';

class Catagories extends StatelessWidget {
  const Catagories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            bottom: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((BuildContext context) => Cardiologist()),
                    ),
                  );
                },
                child: Container(
                  color: Color(0xffE6EFF9),
                  width: 100.0,
                  height: 100.0,
                  child: Card(
                    shadowColor: Color(0xffFE7CFF),
                    elevation: 10.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/logo/heart.png",
                        ),
                        Text(
                          "Cardiologist",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((BuildContext context) => HeartSurgeon()),
                    ),
                  );
                },
                child: Container(
                  color: Color(0xffE6EFF9),
                  width: 100.0,
                  height: 100.0,
                  child: Card(
                    shadowColor: Color(0xff9DDD51),
                    elevation: 10.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/logo/Orthopaedic.png",
                        ),
                        Text(
                          "Orthopaedic",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((BuildContext context) => Dentist()),
                    ),
                  );
                },
                child: Container(
                  color: Color(0xffE6EFF9),
                  width: 100.0,
                  height: 100.0,
                  child: Card(
                    shadowColor: Color(0xffFF7666),
                    elevation: 10.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/logo/Dentist.png",
                        ),
                        Text(
                          "Dentist",
                          style: TextStyle(
                            color: Colors.black,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Top Doctors",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TopDoctor()));
              },
              child: Text(
                "See all",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff555fd2),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
