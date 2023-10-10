import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class CustomContainer extends StatelessWidget {
  final String? title;
  const CustomContainer({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.5, color: AppColors.mainColor)),
      child: Center(
          child: Text(
        '$title',
        textAlign: TextAlign.center,
      )),
    );
  }
}
