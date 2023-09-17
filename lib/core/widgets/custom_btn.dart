import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backroundColor = Colors.blue,
    required this.onPressed,
    this.borderRadius = BorderRadius.zero,
    required this.text,
    this.textColor = Colors.white,
  });
  final Color backroundColor, textColor;
  final Function onPressed;
  final BorderRadiusGeometry borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        backgroundColor: backroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
