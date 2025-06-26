import 'package:demo/Screen/HomeScreen.dart';
import 'package:flutter/material.dart';
class row_column extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                homescreen(),
                homescreen(),
                homescreen(),
              ]
          ),


          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                homescreen(),
                homescreen(),
                homescreen(),
              ]
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                homescreen(),
                homescreen(),
                homescreen(),
              ]
          ),

        ]

    );



  }
}