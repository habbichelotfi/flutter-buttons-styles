import 'package:flutter/material.dart';

class MightyButton extends StatelessWidget {
  const MightyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size.fromWidth(300)),

        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.fromLTRB(20, 3, 20, 0)),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontFamily: 'Codec cold',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.4,
            color: Colors.white,
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              // Return a color for the pressed state here, if needed
              return Colors.white.withOpacity(0.1);
            }
            return Colors.white.withOpacity(0.1);
          },
        ),
        side: MaterialStateProperty.all<BorderSide>(BorderSide.none),
      ),
      onPressed: () {
        // Handle button press
      },
      child: Ink(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.4, 1],
            colors: [Color(0xFFF34079), Color(0xFFFC894D)],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          alignment: Alignment.center,
          height: 54,
          constraints: BoxConstraints(maxWidth: double.infinity),
          // Ensures the button takes the full width available
          child: const Text(
            'BUTTON TEXT',
            textAlign: TextAlign.center,
            style: TextStyle(
              // This is necessary to make the text uppercase, as Flutter does not have a text-transform property
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.4,
            ),
          ),
        ),
      ),
    );
  }
}
