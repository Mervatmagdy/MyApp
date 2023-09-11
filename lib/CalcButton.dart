import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  Function clicked;
  String text;
  CalcButton({required this.text,required this.clicked});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            onPressed: () {
              clicked(text);
            },
            child: Text(
              text,
              style: TextStyle(fontSize: 25),
            )));
  }
}
