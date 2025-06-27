import 'package:flutter/material.dart';

class Conunters extends StatefulWidget {
  @override
  _ConuntersState createState() =>   _ConuntersState();
}

class   _ConuntersState extends State<Conunters> {
  int _count = 0;

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

           ],
         ),
       ),
     );
  }
}