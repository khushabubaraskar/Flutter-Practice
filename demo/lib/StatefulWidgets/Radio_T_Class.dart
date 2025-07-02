import 'package:flutter/material.dart';


enum SingingCharacter { Yes,No}

class RadioExample extends StatefulWidget {
  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  SingingCharacter? _character = SingingCharacter.Yes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio Example')),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('Yes'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Yes,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title:  Text('No'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.No,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Selected: ${_character == SingingCharacter.No ? 'No' : 'Yes'}',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
