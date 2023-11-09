import 'package:flutter/material.dart';

class Algolia1Button extends StatelessWidget {
  const Algolia1Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size.fromWidth(300)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                // Define the color for the pressed state if needed
                return Colors.white.withOpacity(0.1);
              }
              return Colors.white.withOpacity(0.1);
            },
          ),
          shadowColor:
              MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.1)),
          elevation: MaterialStateProperty.all<double>(4.0),
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(vertical: 2.0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0))),
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(
                fontFamily: 'JetBrains Mono',
                fontSize: 18,
                fontWeight: FontWeight.normal),
          ),
          side: MaterialStateProperty.all<BorderSide>(BorderSide.none)),
      onPressed: () {
        // TODO: Insert event handler code
      },
      child: Ink(
        decoration: BoxDecoration(
          gradient: const RadialGradient(
            center: Alignment.topRight,
            radius: 2.0,
            colors: [Color(0xFF5adaff), Color(0xFF5468ff)],
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Container(
          alignment: Alignment.center,
          height: 48.0,
          child: Text('Button Text'),
        ),
      ),
    );
  }
}
