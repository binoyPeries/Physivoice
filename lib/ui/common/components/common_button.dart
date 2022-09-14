import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final String text;
  final double fontSize;
  final Function onPressed;

  const CommonButton({
    Key? key,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 1,
      ),
      onPressed: () => onPressed(),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
