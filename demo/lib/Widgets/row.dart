import 'package:demo/Screen/HomeScreen.dart';
import 'package:flutter/material.dart';
class row_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        homescreen(),
        homescreen(),
        homescreen(),
      ],
    );
  }
}