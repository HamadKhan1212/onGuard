import 'package:flutter/material.dart';

import '../../../../../theme/app_color.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(10)),
        height: 60,
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.mainColor, fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
