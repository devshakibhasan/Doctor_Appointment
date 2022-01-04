// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image(
          fit: BoxFit.cover,
          height: 125.0,
          width: double.infinity,
          // ignore: prefer_const_constructors
          image: AssetImage(
            "assets/images/Sign_in.jpg",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff555fd2),
                  ),
                ),
                Text(
                  "Sign in to continue.",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff172331),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
