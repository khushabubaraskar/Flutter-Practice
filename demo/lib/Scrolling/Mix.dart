import 'package:flutter/material.dart';
import 'package:demo/Scrolling/horizontalscroll.dart';
import 'package:demo/Scrolling/verticalscroll.dart';
class Scrolling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
    title: Text(' Scrolling'),
    ),
    body:SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Horizontal Scroll',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Horizontalscroll(),

        SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Vertical Scroll',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        VerticalScroll(),
      ],
    ),
    ),
    );
  }
}
