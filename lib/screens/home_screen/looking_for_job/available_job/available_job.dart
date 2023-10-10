import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/screens/home_screen/i_am_an_employer/posted_job/edit_profile.dart';
import 'package:onguard/theme/app_color.dart';
import 'package:onguard/widgets/primary_button.dart';

import 'job_available/door_supervisors/door_supervisor.dart';
import 'job_available/enforcement/enforcement.dart';
import 'job_available/events/events.dart';
import 'job_available/monitoring/monitoring.dart';
import 'job_available/security_guard/security_guard.dart';

class AvailableJob extends StatefulWidget {
  const AvailableJob({super.key});

  @override
  State<AvailableJob> createState() => _AvailableJobState();
}

class _AvailableJobState extends State<AvailableJob> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Available Job',
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == 0
                              ? AppColors.mainColor
                              : AppColors.primaryWhite),
                      child: Text(
                        'SECURITY GUARD',
                        style: TextStyle(
                            color: currentIndex == 0
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == 1
                              ? AppColors.mainColor
                              : AppColors.primaryWhite),
                      child: Text(
                        'DOOR SUPERVISOR',
                        style: TextStyle(
                            color: currentIndex == 1
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == 2
                              ? AppColors.mainColor
                              : AppColors.primaryWhite),
                      child: Text(
                        'ENFORCEMENT',
                        style: TextStyle(
                            color: currentIndex == 2
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == 3
                              ? AppColors.mainColor
                              : AppColors.primaryWhite),
                      child: Text(
                        'EVENTS',
                        style: TextStyle(
                            color: currentIndex == 3
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 4;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == 4
                              ? AppColors.mainColor
                              : AppColors.primaryWhite),
                      child: Text(
                        'MONITORING',
                        style: TextStyle(
                            color: currentIndex == 4
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            currentIndex == 0
                ? const SecurityGuard()
                : currentIndex == 1
                    ? const DoorSupervisor()
                    : currentIndex == 2
                        ? const Enforcement()
                        : currentIndex == 3
                            ? const Events()
                            : const Monitoring(),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                      title: 'Offer',
                      onPress: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: PrimaryButton(
                      title: 'Edit Profile',
                      onPress: () {
                        Get.to(EditProfile());
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
