
import 'package:flutter/material.dart';
import 'package:demo/LoginComponants/Password.dart';
import 'package:demo/LoginComponants/LoginButton.dart';
import 'package:demo/LoginComponants/Checkbox.dart';
import 'package:demo/LoginComponants/GoogleButton.dart';


class Loginscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with a title
        appBar: AppBar(
          backgroundColor: Color(0xFFF5F1F1),
          title: const Text(
            "Login Screen",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://t3.ftcdn.net/jpg/03/22/30/46/360_F_322304683_7ysRarFkmy2osfPKTOYQv7qTPofKelfb.jpg',
              ),
              fit: BoxFit.cover, // fills entire screen
              // alignment: Alignment.topCenter,
            ),
          ),
          child: Center(
              child: SingleChildScrollView(          // avoids keyboard overflow
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: double.infinity,
                    ),
                    padding: const EdgeInsets.all(16),
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Column(
                      children: [
                        Center(
                          child: Text('LOGIN',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Your Username',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        Column(
                          children: [
                            PasswordField()
                          ],
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: checkbox(),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Loginbutton(),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                'OR',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: GoogleButton(),
                        )
                      ],
                    ),
                  )
              )
          ),
        )
    );
  }
}
