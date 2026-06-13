import 'package:flutter/material.dart';
import 'package:simpleapp/View/Screens/HomeScreen.dart';
import 'package:simpleapp/View/Screens/countryListScreen.dart';
import 'package:simpleapp/View/Screens/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homescreen());
  }
}
