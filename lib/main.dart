import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/screens/auth_screen/login_screen.dart';
import 'package:onguard/theme/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primaryWhite,
          appBarTheme: AppBarTheme(
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: AppColors.primaryBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  backgroundColor: Colors.transparent))),
      home: const LogInScreen(),
    );
  }
}
