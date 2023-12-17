import 'package:flutter/material.dart';

abstract class ButtonClick {
  final String value;
  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class OpButtonClick extends ButtonClick {
  OpButtonClick(super.value);
}

class SignalButtonClick extends ButtonClick {
  SignalButtonClick(super.value);
}

class EqualButtonClick extends ButtonClick {
  EqualButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class ClearEntryButtonClick extends ButtonClick {
  ClearEntryButtonClick(super.value);
}

class MyButton extends StatelessWidget {

  final void Function(ButtonClick click) onButtonClick;

  const MyButton({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(value: 'C', color: Colors.red.shade800, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(ClearButtonClick(value)),
            ),
            Button(value: '%', color: Colors.blue.shade600, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '÷', color: Colors.blue.shade600, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(OpButtonClick(value)),
            ),
            ClearEntryButton(value: 'CE', color: Colors.blue.shade600, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(ClearEntryButtonClick(value)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(value: '7', color: Colors.grey.shade900, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '8', color: Colors.grey.shade900, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '9', color: Colors.grey.shade900, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '×', color: Colors.blue.shade600, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(OpButtonClick(value)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(value: '4', color: Colors.grey.shade900, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '5', color: Colors.grey.shade900, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '6', color: Colors.grey.shade900, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '-', color: Colors.blue.shade600, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(value: '1', color: Colors.grey.shade900, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '2', color: Colors.grey.shade900, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '3', color: Colors.grey.shade900, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '+', color: Colors.blue.shade600, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(value: '+/-', color: Colors.blue.shade600, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(SignalButtonClick(value),)
            ),
            Button(value: '0', color: Colors.grey.shade900, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '.', color: Colors.grey.shade900, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(CommonButtonClick(value)),
            ),
            Button(value: '=', color: Colors.blue.shade600, fontcolor: Colors.white,
            onTap: (value) => onButtonClick(EqualButtonClick(value)),
            ),
          ],
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  final Color? fontcolor;
  final void Function(String value)? onTap;
  const Button({super.key, required this.value, this.color, this.fontcolor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Material(
        color: color,
        child: InkWell(
          onTap: onTap == null ? null : () => onTap!(value),
          child: Container(
            height: 75,
            width: 75,
            child: Center(
              child: Text(value,
                style: TextStyle(
                  fontSize: 30,
                  color: fontcolor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ClearEntryButton extends StatelessWidget {
  final String value;
  final Color? color;
  final Color? fontcolor;
  final void Function(String value)? onTap;
  const ClearEntryButton({super.key, required this.value, this.color, this.fontcolor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Material(
        color: color,
        child: InkWell(
          onTap: onTap == null ? null : () => onTap!(value),
          child: Container(
            height: 75,
            width: 75,
            child: Center(
              child: Icon(Icons.backspace_outlined,
              color: fontcolor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}