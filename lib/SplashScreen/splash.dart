// ignore_for_file: prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors

import 'dart:async';
import 'package:doctor_chamber/Pages/Home/home.dart';
import 'package:doctor_chamber/Pages/Login/loginpage.dart';
import 'package:doctor_chamber/Pages/Onboarding_page/onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isviewed;

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    // ignore: prefer_const_constructors
    Timer(Duration(seconds: 3), () async {
      // ignore: prefer_const_constructors
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ));
      WidgetsFlutterBinding.ensureInitialized();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      isviewed = prefs.getInt('onBoard');
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) =>
              isviewed != 0 ? OnBoard() : MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff656FD7),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/images/splash_1.jpg',
              height: 250.0,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Doctor Appointment',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
