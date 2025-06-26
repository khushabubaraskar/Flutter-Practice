import 'package:flutter/material.dart';
import'./gridwidget.dart';
class Gridwid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF81D4FA),
        title: const Text(
          "Cart Page",
          style: TextStyle(color: Color(0xFF37474F)),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF81D4FA),
              ), // BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color:Color(0xFF37474F)),
                accountName: Text(
                  "Khushabu Baraskar",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("khushabubaraskar@gmail.com"),
                currentAccountPictureSize: Size.square(45),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color(0xFF81D4FA),
                  child: Text(
                    "K",
                    style: TextStyle(fontSize: 30.0, color: Color(0xFF37474F)),
                  ), // Text
                ), // CircleAvatar
              ), // UserAccountDrawerHeader
            ), // DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.percent),
              title: const Text(' My Orders '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body:GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisCount: 2,
        children:[
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),// Applies 16px padding on all sides
                color: Color(0xFF81D4FA),
              ),
              child: Gridwidget ()

          ),
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),// Applies 16px padding on all sides
                color: Color(0xFF81D4FA),
              ),
              child: Gridwidget ()
          ),
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),// Applies 16px padding on all sides
                color: Color(0xFF81D4FA),
              ),
              child: Gridwidget ()
          ),
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),// Applies 16px padding on all sides
                color: Color(0xFF81D4FA),
              ),
              child: Gridwidget ()

          ),
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),// Applies 16px padding on all sides
                color: Color(0xFF81D4FA),
              ),
              child: Gridwidget ()

          ),
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),// Applies 16px padding on all sides
                color: Color(0xFF81D4FA),
              ),
              child: Gridwidget ()

          ),
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),// Applies 16px padding on all sides
                color: Color(0xFF81D4FA),
              ),
              child: Gridwidget ()

          ),
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),// Applies 16px padding on all sides
                color: Color(0xFF81D4FA),
              ),
              child: Gridwidget ()

          ),

        ],
      ) ,
    );
  }
}