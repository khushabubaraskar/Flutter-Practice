import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool? value = false; // Initialize as nullable bool for tristate

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widgets'),
        backgroundColor: Color(0xFF6333FF),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 8),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Column(
                      children: [
                        const Text(
                          'Checkbox Widgets',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Text(
                                'Checkbox Implementation:',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                            Checkbox(
                              tristate: true,
                              value: value,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  value = newValue;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )

      ),
    );
  }
}
