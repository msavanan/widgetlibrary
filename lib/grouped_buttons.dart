import 'package:flutter/material.dart';
import 'rounded_buttons.dart';

class GroupedButtons extends StatefulWidget {
  @override
  _GroupedButtonsState createState() => _GroupedButtonsState();
}

class _GroupedButtonsState extends State<GroupedButtons> {
  List buttonColorList = [false, false, false, false];
  int activeIndex;

  void changeButtonColor() {
    print(activeIndex);
    for (int i = 0; i < buttonColorList.length; i++) {
      if (i != activeIndex) {
        buttonColorList[i] = false;
      }
      setState(() {
        buttonColorList[activeIndex] = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedButton(
          text: 'Free',
          func: () {
            activeIndex = 0;
            changeButtonColor();
          },
          buttonColor: buttonColorList[0],
        ),
        SizedBox(
          width: 5,
        ),
        RoundedButton(
          text: '0 - 500',
          func: () {
            activeIndex = 1;
            changeButtonColor();
          },
          buttonColor: buttonColorList[1],
        ),
        SizedBox(
          width: 5,
        ),
        RoundedButton(
          text: '500 - 2000',
          func: () {
            activeIndex = 2;
            changeButtonColor();
          },
          buttonColor: buttonColorList[2],
        ),
        SizedBox(
          width: 5,
        ),
        RoundedButton(
          text: 'Above 2000',
          func: () {
            activeIndex = 3;
            changeButtonColor();
          },
          buttonColor: buttonColorList[3],
        ),
      ],
    );
  }
}
