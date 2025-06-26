import 'package:flutter/material.dart';
class DividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Divider(
        color: Color(0xFF171616),       // Line color
        thickness: 1.0,           // Line thickness
        height: 20.0,             // Total vertical space (including margin)
        indent: 10.0,             // Left spacing
        endIndent: 10.0,          // Right spacing
      )
    );
  }
}