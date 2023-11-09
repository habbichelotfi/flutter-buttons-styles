import 'package:flutter/material.dart';

class WilmingtonandbeachesButton extends StatelessWidget {
  const WilmingtonandbeachesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(Color(0xFF00132C)),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: Color(0xFF266DB6))),
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 23.0, vertical: 16.0)),
            textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                fontFamily: 'Avenir Next LT W01 Bold',
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00132C),
                height: 24.0 / 16.0))),
        onPressed: () {},
        child: Text('Button Text'));
  }
}
