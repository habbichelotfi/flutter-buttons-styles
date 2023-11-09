import 'package:flutter/material.dart';

class Algolia2Button extends StatelessWidget {
  const Algolia2Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size.fromWidth(300)),

        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFCFCFD)),
        foregroundColor: MaterialStateProperty.all<Color>(Color(0xFF36395A)),
        shadowColor: MaterialStateProperty.all<Color>(
            Color(0xFF2D2342).withOpacity(0.4)),
        elevation: MaterialStateProperty.all<double>(4.0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16.0)),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
              fontFamily: 'JetBrains Mono',
              fontSize: 18,
              color: Color(0xFF36395A),
              height: 1),
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Color(0xFFDDDDDD); // Color when the button is pressed
            }
            return Color(0xFFDDDDDD);
          },
        ),
      ),
      onPressed: () {
        // Handle button press
      },
      child: Container(
        height: 48.0, // Fixed height for the button
        alignment: Alignment.center,
        child: Text('Button Text'),
      ),
    );
  }
}
