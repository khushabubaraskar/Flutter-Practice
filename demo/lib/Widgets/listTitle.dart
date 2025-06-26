import 'package:flutter/material.dart';
class ListtitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('List Title Widget'),
      subtitle: Text('This is List Title Widget Example'),
      leading: Icon(Icons.person),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print('Tapped!');
      },
    );
  }
}