import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<StadiumBorder>(StadiumBorder()),
        elevation: MaterialStateProperty.resolveWith<double>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return 6.0; // Elevated more when pressed.
            }
            return 3.0; // Default elevation.
          },
        ),
        shadowColor:
            MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.9)),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return states.contains(MaterialState.pressed)
                ? Colors.black12
                : Colors.transparent;
          },
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0)),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            color: Color(0xFF3c4043),
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.25,
          ),
        ),
      ),
      onPressed: () {
        // Handle button press
      },
      child: Text(
        'Button',
        style: TextStyle(
          color: Color(0xFF3c4043),
        ),
      ),
    );
  }
}
