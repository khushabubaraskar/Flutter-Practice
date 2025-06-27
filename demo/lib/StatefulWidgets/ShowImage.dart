import 'package:flutter/material.dart';
class Showimage extends StatefulWidget {
  @override
  _ShowimageState createState() =>   _ShowimageState();
}

class   _ShowimageState extends State<Showimage> {
  bool isOn=true;
  void _toggleSwitch(bool value) {
    setState(() {
      isOn = value;
    });
  }
  Widget showimage(bool isOn){
   return  Column(
     children: [
       if(isOn)
       Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(right: 8, bottom: 0),
          child: Image.network(
            'https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg' ,
            width: 340,
            height: 340,
            fit: BoxFit.cover,
          ),
        ),
   ),
     ]
      );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9847F1),
        title: Text('Stateful Widgets',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.white,
              width: 340.0,
              height: 340.0,
              child:  showimage(isOn)
            ),

            Text('Show Image'),
            Switch(value: isOn,
                onChanged: _toggleSwitch
            ),
          ],
        ),
      )
    );
  }
}
