import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Sum extends StatefulWidget {
  @override
  _sumState createState() => _sumState();
}

class _sumState extends State<Sum> {
   int _num1=0;
   int _num2=0;
   int _sum=0;
   void Num1(int value){
     setState(() {
       _num1=value;
     });
   }
   void Num2(int value){
     setState(() {
       _num2=value;
     });
   }
   void findSum(){
     setState(() {
      _sum=_num1+_num2;
     });
   }
Widget ShowSum(){
  return Center(
    child: Column(
      children: [
        if(!_sum.isNegative)
    Card(
    elevation: 4,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Sum: $_sum',
        style: TextStyle(fontSize: 20),
      ),
    ),
  ),
      ],
    ),
  );
   }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF632BFF),
          title: const Text(
            "Stateful Widget Example",
            style: TextStyle(color: Colors.black),
          ),
        ),
       body:Center(
         child: Column(
           children: [
             SizedBox(height: 10),
         Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              labelText: 'Num1',
              border: OutlineInputBorder(),
            ),
            onChanged: (String value) {
              if (value.isNotEmpty) {
                final intValue = int.tryParse(value);
                if (intValue != null) {
                  Num1(intValue);
                } else {
                  print("Invalid integer input");
                }
              }
            },

          )
          ),
             SizedBox(height: 10),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
               child: TextField(
                 keyboardType: TextInputType.number,
                 inputFormatters: [
                   FilteringTextInputFormatter.digitsOnly,
                 ],
                 decoration: InputDecoration(
                   labelText: 'Num2',
                   border: OutlineInputBorder(),
                 ),
                 onChanged: (String value) {
                   if (value.isNotEmpty) {
                     final intValue = int.tryParse(value);
                     if (intValue != null) {
                       Num2(intValue);
                     } else {
                       print("Invalid integer input");
                     }
                   }
                 },
               ),
             ),
             SizedBox(height: 10),
             ElevatedButton(
                 onPressed: findSum,
                 child:Text('Sum')
             ),
             SizedBox(height: 10),

             Center(
               child: ShowSum(),
             )

          ]
      ),
       ),
      );
  }
}