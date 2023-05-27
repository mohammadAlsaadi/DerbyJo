import 'package:check_out/categories.dart';
import 'package:check_out/createGame.dart';
import 'package:check_out/info.dart';
import 'package:check_out/signup.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:check_out/checkOut.dart';
import 'calender.dart';
import 'getStrart.dart';
import 'footballCategories.dart';
import 'info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FootbalhCategories(),
    );
  }
}
