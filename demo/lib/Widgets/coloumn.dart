import 'package:flutter/material.dart';

import 'package:demo/Screen/homescreen.dart';
import 'package:flutter/material.dart';
class coloumnwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        homescreen(),
        homescreen(),
        homescreen(),
      ],
    );
  }
}