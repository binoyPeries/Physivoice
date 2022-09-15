import 'package:flutter/material.dart';
import 'package:physivoice/ui/constants/colors.dart';

class DefaultElevatedButton extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final String text;
  final double fontSize;
  final double width;
  final double height;
  final Function onPressed;

  const DefaultElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.buttonColor = PhysivoiceColors.tertiaryColor,
    this.textColor = Colors.white,
    this.fontSize = 18,
    this.width = 250,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
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
      ),
    );
  }
}
