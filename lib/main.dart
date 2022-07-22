import 'package:flutter/material.dart';
import 'widgets/mainPage.dart';

void main() {
  runApp(const NavDrawerApp());
}

var indexClicked = 0;

class NavDrawerApp extends StatelessWidget {
  const NavDrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}