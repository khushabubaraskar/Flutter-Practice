import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
        child: ElevatedButton(
          child: Text("Show Bottom Sheet"),
          onPressed: () {
            showBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 30,
                  color: Color(0xFFAA8F8F),
                  child: Center(
                      child: Text(' This is Persistent Bottom Sheet')
                  ),
                );
              },
            );
          },
        ),
    ),
        Center(
          child: ElevatedButton(
            child: Text("Show Modal Bottom Sheet"),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 100,
                    color: Color(0xFFAA8F8F),
                    child: Center(child: Text('Modal Bottom Sheet')),
                  );
                },
              );
            },
          ),
        ),
      ]
    );
  }
}
