import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Color(0xFFAA8F8F),
        child: const Text('K'),
      ),
      label: const Text('Khushabu'),
    );
  }
}