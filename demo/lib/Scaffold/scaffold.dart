import 'package:flutter/material.dart';
class scaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with a title
        appBar: AppBar(
          backgroundColor: Color(0xFF81D4FA),
          title: const Text(
            "DevMinds Software",
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
                leading: const Icon(Icons.book),
                title: const Text(' My Course '),
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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(

                margin: const EdgeInsets.all(10.0),
                color: Color(0xFFA9DDF7),
                width: 400.0,
                height: 150.0,
                child:Center(
                  child: Text(
                    'Name:Khushabu Baraskar\nEmail:khushabubaraskar@gmail.com\nPhone No:2345764134',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),


              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Color(0xFFA9DDF7),
                width: 400.0,
                height: 150.0,
                child:Center(
                  child: Text(
                    'Name:Mansi Kadam\nEmail:kadammansi455@gmail.com\nPhone No:4532786542',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),


              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Color(0xFFA9DDF7),
                width: 400.0,
                height: 150.0,
                child:Center(
                  child: Text(
                    'Name:Sara Patel\nEmail:patelsara@gmail.com\nPhone No:4567432189',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),


              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Color(0xFFA9DDF7),
                width: 400.0,
                height: 150.0,
                child:Center(
                  child: Text(
                    'Name:Iram Fakir\nEmail:iramfakir@gmail.com\nPhone No:2376864531',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),


              ),
            ]
        )
    );
  }
}