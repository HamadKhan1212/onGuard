import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/screens/home_screen/i_am_an_employer/posted_job/widgets/custom_butto.dart';
import 'package:onguard/widgets/dayTime_selection.dart';
import 'package:onguard/widgets/drop_down/basis_dropDown.dart';
import 'package:onguard/widgets/drop_down/business_area_sellection.dart';
import 'package:onguard/widgets/drop_down/services_drop_down.dart';
import 'package:onguard/widgets/primary_button.dart';

import '../../../../../../../../widgets/custom_input.dart';
import '../../../../../widgets/availability_table.dart';
import '../../../../../widgets/drop_down/recurring_dropDown.dart';
import 'offered_job/offered_job.dart';

class PostJob extends StatefulWidget {
  const PostJob({super.key});

  @override
  State<PostJob> createState() => _PostJobState();
}

class _PostJobState extends State<PostJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Post Job',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Job Detail',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const CustomInput(hintText: 'Job Name'),
              const DateTimeSelection(),
              const Text(
                'Service Offered',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const ServicesDropDown(),
              const BasisDropDown(),
              const SizedBox(height: 20),
              const CustomInput(
                hintText: 'Rate per hour',
                keyBoardType: TextInputType.numberWithOptions(),
              ),
              const SizedBox(height: 20),
              const RecurringDropDown(),
              const SizedBox(height: 20),
              const CustomInput(
                  hintText: 'Recurring of week',
                  keyBoardType: TextInputType.number),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Availability',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Column(
                children: [
                  CustomAvailabilityRow(title: 'Monday'),
                  CustomAvailabilityRow(title: 'Tuesday'),
                  CustomAvailabilityRow(title: 'Wednesday'),
                  CustomAvailabilityRow(title: 'Thursday'),
                  CustomAvailabilityRow(title: 'Friday'),
                  CustomAvailabilityRow(title: 'Saturday'),
                  CustomAvailabilityRow(title: 'Sunday'),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Business Detail',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const CustomInput(hintText: 'Business Name'),
              const BusinessAreaSelection(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const CustomInput(hintText: 'Address'),
              const CustomInput(hintText: 'Postal Code'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Comment',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const CustomInput(hintText: 'Any Comment', maxLine: 4),
              const CustomInput(hintText: 'Dress Code'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Expected Pay',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const CustomInput(hintText: 'Total Expected Pay'),
              const SizedBox(height: 20),
              PrimaryButton(title: 'Post Job', onPress: () {}),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(title: 'Available Candidate\'s'),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomButton(
                        title: 'Posted\nJob',
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                        child: CustomButton(
                      title: 'Edit\nProfile',
                      onTap: () {
                        Get.to(const OfferedJob());
                      },
                    )),
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
