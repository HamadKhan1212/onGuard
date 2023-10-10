import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/screens/home_screen/i_am_an_employer/posted_job/edit_profile.dart';
import 'package:onguard/screens/home_screen/i_am_an_employer/posted_job/posted_job.dart';
import 'package:onguard/screens/home_screen/looking_for_job/available_job/job_available/security_guard/security_guard_detail/available_candidate/part_time/part_time.dart';
import 'package:onguard/theme/app_color.dart';

import '../../../../../../i_am_an_employer/posted_job/post_job/post_job.dart';
import 'casual/casual.dart';
import 'full_time/full_time.dart';

class AvailableCandidate extends StatefulWidget {
  const AvailableCandidate({super.key});

  @override
  State<AvailableCandidate> createState() => _AvailableCandidateState();
}

class _AvailableCandidateState extends State<AvailableCandidate> {
  int shiftPartTime = 0;
  int shiftCasual = 0;
  int shiftType = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Available Candidate',
          style: TextStyle(color: AppColors.mainColor),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryWhite,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.greyColor),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          shiftType = 0;
                          setState(() {});
                        },
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: shiftType == 0
                                  ? AppColors.mainColor
                                  : AppColors.primaryWhite,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                          child: Center(
                            child: Text(
                              'Full Time',
                              style: TextStyle(
                                  color: shiftType == 0
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          shiftType = 1;
                          setState(() {});
                        },
                        child: Container(
                          height: 45,
                          color: shiftType == 1
                              ? AppColors.mainColor
                              : AppColors.primaryWhite,
                          child: Center(
                            child: Text(
                              'Part Time',
                              style: TextStyle(
                                  color: shiftType == 1
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          shiftType = 2;
                          setState(() {});
                        },
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: shiftType == 2
                                  ? AppColors.mainColor
                                  : AppColors.primaryWhite,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Center(
                            child: Text(
                              'Casual',
                              style: TextStyle(
                                  color: shiftType == 2
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              shiftType == 0
                  ? const FullTime()
                  : shiftType == 1
                      ? const PartTime()
                      : const Casual(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 1),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(PostJob());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.greyColor,
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Text('Post a\nJob',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(PostedJob());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.greyColor,
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Text('Posted\nJob',
                                style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(EditProfile());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.greyColor,
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Text('Edit\nProfile',
                                style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
