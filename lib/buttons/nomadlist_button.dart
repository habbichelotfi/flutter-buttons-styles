import 'package:flutter/material.dart';

class NomadlistButton extends StatelessWidget {
  const NomadlistButton({super.key});

    @override
    Widget build(BuildContext context) {
      return ElevatedButton(
          style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size.fromWidth(300)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFFFF4742)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              elevation: MaterialStateProperty.all<double>(2.0),
              shadowColor:
                  MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.1)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    side: const BorderSide(color: Color(0xFFFF4742))),
              ),
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(12)),
              textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w800,
                  height: 1.0))),
          onPressed: () {
            // TODO: Insert event handler code
          },
          child: const SizedBox(
              height: 40.0, // Min-height from CSS
              child: Center(child: Text('Button Text'))));
    }
}
