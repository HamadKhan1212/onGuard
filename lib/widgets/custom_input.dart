import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class CustomInput extends StatelessWidget {
  final String? hintText;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;
  final int? maxLine;
  final Color? filledColor;
  final TextInputType? keyBoardType;
  const CustomInput({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscure = false,
    this.keyBoardType,
    this.maxLine = 1,
    this.filledColor = const Color(0xffEEEEEE),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        maxLines: maxLine,
        keyboardType: keyBoardType,
        style: TextStyle(color: AppColors.mainColor),
        obscureText: obscure!,
        decoration: InputDecoration(
          iconColor: AppColors.mainColor,
          prefixIconColor: AppColors.mainColor,
          hintText: hintText,
          suffixIconColor: AppColors.mainColor,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: filledColor,
          hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.w500,
              fontSize: 15),
          filled: true,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.transparent, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.mainColor, width: 1),
          ),
        ),
      ),
    );
  }
}
