import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class Dentist extends StatelessWidget {
  const Dentist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff555FD2),
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          'Dentist',
          // ignore: prefer_const_constructors, unnecessary_new
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Color(0xffE3EBF4),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
          ),
          itemCount: 7,
          padding: EdgeInsets.all(10.0),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100.0,
              width: 30.0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/doctor_4.png",
                    ),
                    Text(
                      "Dr. Mayme Gomez",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Dentist",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffB5B7C6),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "500tk",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
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
                      ],
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(width: 100.0, height: 20.0),
                      child: ElevatedButton(
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
