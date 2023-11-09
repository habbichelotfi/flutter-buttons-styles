import 'package:flutter/material.dart';

class StackOverflowButton extends StatelessWidget {
  const StackOverflowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFe1ecf4)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
            side: BorderSide(color: Color(0xFF7aa7c7)),
          ),
        ),
        shadowColor:
            MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.7)),
        elevation: MaterialStateProperty.all<double>(1.0),
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0)),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors
                  .transparent; // Color for the ripple effect when button is pressed
            }
            return Colors.black; // Use the default value
          },
        ),
      ),
      onPressed: () {
        // Handle the button press
      },
      child: Text(
        'Button',
        style: TextStyle(
          color: Color(0xFF39739d),
          fontSize: 13.0,
          fontWeight: FontWeight.w400,
          fontFamily: 'system-ui',
        ),
      ),
    );
  }
}
