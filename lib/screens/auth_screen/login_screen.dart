import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/screens/auth_screen/signup_screen.dart';
import 'package:onguard/theme/app_color.dart';
import 'package:onguard/widgets/primary_button.dart';

// This is screen number 1
import '../../widgets/custom_input.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 100),
                Image(
                    image: const AssetImage('assets/images/onGuard.png'),
                    height: 200,
                    width: 200,
                    color: AppColors.mainColor),
                const SizedBox(height: 70),
                const CustomInput(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
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
                  prefixIcon: const Icon(Icons.lock_rounded),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: AppColors.mainColor),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: PrimaryButton(onPress: () {}, title: 'Login'),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Get.to(const SignUpScreen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have a account: '),
                      Text(
                        'Register Now',
                        style: TextStyle(color: AppColors.mainColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
