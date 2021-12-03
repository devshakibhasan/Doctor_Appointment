// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      height: 190.0,
      width: double.infinity,
      child: Column(
        children: [
          // ignore: prefer_const_constructors, duplicate_ignore
          Image(
            fit: BoxFit.cover,
            height: 125.0,
            width: double.infinity,
            // ignore: prefer_const_constructors
            image: AssetImage(
              "assets/images/Sign_in.jpg",
            ),
          ),
          Text(
            "Get Your Code",
            style: TextStyle(
              color: Color(0xff555FD2),
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
          Column(
            children: [
              Text(
                "Please enter the 4 digit code sent",
                style: TextStyle(
                  color: Color(0xff333D4A),
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                ),
              ),
              Text(
                "to your email address.",
                style: TextStyle(
                  color: Color(0xff333D4A),
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),

          // Image.asset(
          //   "assets/images/Vector_1.jpg",
          //   width: double.infinity,
          // ),
        ],
      ),
    );
  }
}
