import 'package:flutter/material.dart';
import 'package:kotobaty_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.foregroundColor,
      required this.backgroundColor,
      this.borderRadius,
      this.fontSize,this.onPressed});

  final String text;
  final Color foregroundColor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            ),
            backgroundColor: backgroundColor),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w900,
              color: foregroundColor,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
