import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
         // mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              children: [
                TextButton(
                  child:  Text('BUY TICKETS'),
                  onPressed: () {
                    /* ... */
                  },
                ),
            SizedBox(width: 8),
                TextButton(
                  child:  Text('LISTEN'),
                  onPressed: () {
                    /* ... */
                  },
                ),
                 SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}