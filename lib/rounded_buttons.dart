import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function func;
  final bool buttonColor;

  RoundedButton({this.text, this.func, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    const txtColor = Color(0xFFff0057);
    return ElevatedButton(
        onPressed: func,
        child: Text(
          text,
          style: TextStyle(
            color: txtColor,
            fontSize: 11,
          ),
        ),
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(10, 38)),
            backgroundColor: MaterialStateProperty.all(
                buttonColor ? Colors.blue : Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: BorderSide(color: Colors.white)))));
  }
}
