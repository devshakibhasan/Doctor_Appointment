// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'SplashScreen/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Color(0xff555FD2),
            ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color(0xff555FD2),
          selectionColor: Color(0xff555FD2),
          selectionHandleColor: Color(0xff555FD2),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MySplashScreen(),
    );
  }
}
