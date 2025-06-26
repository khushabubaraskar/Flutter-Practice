import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
            overflow: TextOverflow.fade,
            maxLines: 1,
            'Khushabu')
      ],
    );
  }
}