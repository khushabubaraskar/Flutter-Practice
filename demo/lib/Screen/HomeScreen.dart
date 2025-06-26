import 'package:flutter/material.dart';
import '/Widgets/card.dart';
import '/Widgets/divider.dart';
import '/Widgets/BottomSheet.dart';
import '/Widgets/listTitle.dart';
import '/Widgets/chip.dart';
import '/Widgets/textField.dart';
class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with a title
        appBar: AppBar(
          backgroundColor: Color(0xFFAA8F8F),
          title: const Text(
            "Widgets Practice",
            style: TextStyle(color: Color(0xFF000000)),
          ),
        ),
        body:Column(
         children: [
           SizedBox(height: 10),
           CardWidget(),
           SizedBox(height: 10),
           DividerWidget(),
           SizedBox(height: 10),
           TextfieldWidget(),
           SizedBox(height: 10),
           BottomSheetWidget(),
           SizedBox(height: 10),
           ListtitleWidget(),
           SizedBox(height: 10),
           ChipWidget(),

         ]
        )
    );
  }
}