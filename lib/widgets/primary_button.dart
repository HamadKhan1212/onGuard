import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final Color? buttonColor;
  final Color? titleColor;
  const PrimaryButton({
    super.key,
    this.buttonColor = Colors.blue,
    this.titleColor = Colors.white,
    required this.title,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: buttonColor),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w500, color: titleColor),
            ),
          ),
        ));
  }
}
