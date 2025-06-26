import 'package:flutter/material.dart';
class text extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(
        overflow: TextOverflow.ellipsis,
        'Hello , how are you?',
      maxLines: 1,
      style: TextStyle(
        fontStyle: FontStyle.italic,
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.greenAccent,
        letterSpacing: 2,
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.dashed,
      ),
    );
  }

}