import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/widgets/drop_down/experience_dropDown.dart';
import 'package:onguard/widgets/primary_button.dart';

import '../../../widgets/availability_table.dart';
import '../../../widgets/custom_experience_input.dart';
import '../../../widgets/custom_input.dart';
import '../../../widgets/dayTime_selection.dart';
import '../../../widgets/drop_down/flexible_rate_dropDown.dart';
import '../../../widgets/drop_down/services_drop_down.dart';
import '../../../widgets/file_selection.dart';
import 'available_job/available_job.dart';

class LookingForWork extends StatefulWidget {
  const LookingForWork({Key? key}) : super(key: key);

  @override
  State<LookingForWork> createState() => _LookingForWorkState();
}

class _LookingForWorkState extends State<LookingForWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Personal Details',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const CustomInput(hintText: 'First Name'),
                const CustomInput(hintText: 'Surname'),
                const DateTimeSelection(),
                const SizedBox(height: 10),
                const Text(
                  'Contact Details',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const CustomInput(
                    keyBoardType: TextInputType.number,
                    hintText: 'Phone number'),
                const CustomInput(hintText: 'Tax ID'),
                const CustomInput(hintText: 'PSA ID'),
                const SizedBox(height: 10),
                const Text(
                  'Primary Service Offered',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const ServicesDropDown(),
                const Text(
                  'Availability',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Column(
                  children: [
                    CustomAvailabilityRow(
                      title: 'Monday',
                    ),
                    CustomAvailabilityRow(
                      title: 'Tuesday',
                    ),
                    CustomAvailabilityRow(
                      title: 'Wednesday',
                    ),
                    CustomAvailabilityRow(
                      title: 'Thursday',
                    ),
                    CustomAvailabilityRow(
                      title: 'Friday',
                    ),
                    CustomAvailabilityRow(
                      title: 'Saturday',
                    ),
                    CustomAvailabilityRow(
                      title: 'Sunday',
                    ),
                  ],
                ),
                const CustomInput(
                  hintText: 'Hourly Rate',
                  keyBoardType: TextInputType.number,
                ),
                const FlexibleRateDropDown(),
                const ExperienceDropDown(),
                const SizedBox(height: 10),
                const Text(
                  'Experience (Years)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const CustomExperienceInput(
                  title: 'Security Guard:',
                ),
                const CustomExperienceInput(
                  title: 'Door Supervisor:',
                ),
                const CustomExperienceInput(
                  title: 'Enforcement:',
                ),
                const CustomExperienceInput(
                  title: 'Events:',
                ),
                const CustomExperienceInput(
                  title: 'Monitoring:',
                ),
                const SizedBox(height: 30),
                const FileSelection(),
                const SizedBox(height: 20),
                const Text(
                  'Bank Details',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const CustomInput(hintText: 'IBAN'),
                const CustomInput(hintText: 'BIC'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: PrimaryButton(
                            title: ('Back'),
                            onPress: () {
                              Get.back();
                            }),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: PrimaryButton(
                            title: ('Save'),
                            onPress: () {
                              Get.to(const AvailableJob());
                            }),
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
