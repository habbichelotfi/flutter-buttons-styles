import 'package:flutter/material.dart';

class LinkedinButton extends StatelessWidget {
  const LinkedinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0A66C2)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(100.0), // Creates a highly rounded border
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 20.0)),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 0),
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              // Adjust the color for the pressed state as needed
              return Color(0xFF0A66C2).withOpacity(0.8);
            }
            // It is mandatory to return a non-null value, so provide a default color if needed.
            return Color(0xFF0A66C2); // Same as the button's background color
          },
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Button',
        style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
      ),
    );
  }
}
