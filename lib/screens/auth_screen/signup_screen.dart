import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/theme/app_color.dart';

import '../../widgets/custom_input.dart';
import '../../widgets/primary_button.dart';
import '../home_screen/i_am_an_employer/i_am_an_employer.dart';
import '../home_screen/looking_for_job/looking_for_work.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Image(
                    image: const AssetImage('assets/images/onGuard.png'),
                    height: 200,
                    width: 200,
                    color: AppColors.mainColor),
                const SizedBox(height: 30),
                const CustomInput(
                    hintText: 'Email', prefixIcon: Icon(Icons.email)),
                const CustomInput(
                    hintText: 'Confirm Email', prefixIcon: Icon(Icons.email)),
                CustomInput(
                    obscure: visibility,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visibility = !visibility;
                          });
                        },
                        icon: visibility
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility)),
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock_rounded)),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(const LookingForWork());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Text('I AM LOOKING FOR WORK',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.primaryWhite,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(const IAmAnEmployer());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Text('I AM AN\nEMPLOYER',
                                style: TextStyle(
                                    color: AppColors.primaryWhite,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                PrimaryButton(
                    onPress: () {
                      Get.back();
                    },
                    title: 'BACK TO LOGIN'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
