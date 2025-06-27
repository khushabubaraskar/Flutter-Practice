import 'package:flutter/material.dart';
class Multiplestates extends StatefulWidget {
  @override
  _MultiplestatesState createState() =>   _MultiplestatesState();
}

class   _MultiplestatesState extends State<Multiplestates> {
  int _count = 0;
  bool isOn=false;
  String _name='';

  void _increment() {
    setState(() {
      _count++;
    });
  }
  void _decrement() {
    setState(() {
      _count--;
    });
  }
  void _toggleSwitch(bool value) {
    setState(() {
      isOn = value;
    });
  }

  void updateName(String value){
    setState(() {
      _name=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9847F1),
        title: Text('Counter Example',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),

            Text('Count:$_count'),

            SizedBox(height: 10),

            ElevatedButton(onPressed: _increment,
                child:Text('Increment')),

            SizedBox(height: 10),

            ElevatedButton(onPressed: _decrement,
                child:Text('Decrement')),

            SizedBox(height: 10),

            Container(
                height: 90,
                width: 130,
                margin: const EdgeInsets.all(10.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFC9A6F0),
                ),
              child: Column(
                children: [
                  Text('Switch Button'),
                  Switch(value: isOn,
                      onChanged: _toggleSwitch
                  )
                ],
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0), // indent and endIndent
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
                onChanged: updateName,
              ),
            ),

            SizedBox(height: 20),

            Container(
              child: Text('Username:$_name'),
            )
          ],
        ),
      ),
    );
  }
}