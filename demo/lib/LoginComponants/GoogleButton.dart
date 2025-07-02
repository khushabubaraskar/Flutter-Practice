import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // desired button size
    const double buttonWidth  = 140;
    const double buttonHeight = 48;

    // desired logo size
    const double logoSize = 24;

    final ButtonStyle commonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      fixedSize: const Size(buttonWidth, buttonHeight), // same width & height
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // nice even spacing
      children: [
        ElevatedButton(
          onPressed: () {},
          style: commonStyle,
          child: Image.network(
            'https://www.citypng.com/public/uploads/preview/google-logo-icon-gsuite-hd-701751694791470gzbayltphh.png',
            height: logoSize,
            width: logoSize,
            fit: BoxFit.contain,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: commonStyle,
          child: Image.network(
            'https://pngimg.com/uploads/apple_logo/apple_logo_PNG19666.png',
            height: logoSize,
            width: logoSize,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}