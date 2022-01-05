// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  final String image, name, job, price;

  const DoctorList({
    Key? key,
    required this.image,
    required this.name,
    required this.job,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.only(bottom: 10.0),
      height: 100.0,
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 8.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      '$image',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "$name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "$job",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffB5B7C6),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "$price",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/logo/star.png",
                      ),
                      Text(
                        "5",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 100.0, height: 25.0),
                    child: ElevatedButton(
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
