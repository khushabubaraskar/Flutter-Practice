import 'package:flutter/material.dart';
class Gridwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child:Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.all(10.0),
            color: Color(0xFF81D4FA),
            child: Image.network(
              'https://images-cdn.ubuy.co.in/685a63e5e07d5ad4c1098dfe-japanese-aesthetic-clothes-soft-grunge.jpg',
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),

          ),
          Text('Shirt',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 8, bottom: 8),
              child: Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/002/450/561/small/five-stars-rating-icon-vector.jpg',
                width: 30,
                height: 10,
                fit: BoxFit.cover,
              ),
            ),
          ),

        ],
      ),
    );
  }
}