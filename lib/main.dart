import 'package:firstapp/Myhome.dart';
import 'package:firstapp/card3.dart';
import 'package:firstapp/idcard.dart';
import 'package:firstapp/login.dart';
import 'package:firstapp/registration.dart';
import 'package:firstapp/task2.dart';
import 'package:firstapp/task3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "myname",
      debugShowCheckedModeBanner: false,

      home: Registration(),
    );
  }
}
