// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './screens/homescreen.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bosc-test-app',
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Color(0xffB1B2FF),
        accentColor: Color(0xffEEF1FF),
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffB1B2FF),
          titleTextStyle: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
    );
  }
}
