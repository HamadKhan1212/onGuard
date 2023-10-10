import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/screens/home_screen/i_am_an_employer/posted_job/posted_job.dart';
import 'package:onguard/widgets/drop_down/business_area_sellection.dart';
import 'package:onguard/widgets/drop_down/services_drop_down.dart';

import '../../../widgets/custom_input.dart';
import '../../../widgets/primary_button.dart';

class IAmAnEmployer extends StatefulWidget {
  const IAmAnEmployer({super.key});

  @override
  State<IAmAnEmployer> createState() => _IAmAnEmployerState();
}

class _IAmAnEmployerState extends State<IAmAnEmployer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Personal Details',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const CustomInput(hintText: 'First Name'),
                const CustomInput(hintText: 'Surname'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Business Details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const CustomInput(hintText: 'Business Name'),
                const BusinessAreaSelection(),
                const CustomInput(hintText: 'Address'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Primary Service Offered',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const ServicesDropDown(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Contact Details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const CustomInput(
                    hintText: 'Phone Number',
                    keyBoardType: TextInputType.number),
                const CustomInput(hintText: 'TAX ID'),
                const CustomInput(hintText: 'PSA ID'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Bank Details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const CustomInput(
                  hintText: 'IBAN',
                ),
                const CustomInput(hintText: 'BIC'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
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
                              Get.to(const PostedJob());
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
