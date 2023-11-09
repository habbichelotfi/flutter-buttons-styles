import 'package:flutter/material.dart';

class AirBnbButton extends StatelessWidget {
  const AirBnbButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        foregroundColor: MaterialStateProperty.all<Color>(Color(0xFF222222)),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Color(0xFFDDDDDD); // Change this to desired press color
            }
            return Color(0xFFDDDDDD); // Change this to desired press color
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side:
                BorderSide(color: Color(0xFF222222)), // Border color and width
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(13)),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            fontFamily: 'Circular',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF222222),
          ),
        ),
        // Flutter doesn't support transitions for state changes; you'd use animations for that.
      ),
      onPressed: () {
        // TODO: Insert event handler code
      },
      child: Text('Button Text'),
    );
  }
}
