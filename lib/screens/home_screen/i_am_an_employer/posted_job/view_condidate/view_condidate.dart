import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/screens/home_screen/i_am_an_employer/posted_job/view_condidate/view_job/view_job.dart';
import 'package:onguard/theme/app_color.dart';
import 'package:onguard/widgets/primary_button.dart';

import '../../../../../../../../../widgets/custom_row.dart';
import '../../../../../../../../../widgets/list_item.dart';
import 'cv&psa_request/cv&psa_request.dart';
import 'interview_inquiry/interview_inquiry.dart';

class ViewCandidate extends StatefulWidget {
  final ListItem listItem;
  const ViewCandidate({
    super.key,
    required this.listItem,
  });

  @override
  State<ViewCandidate> createState() => _ViewCandidateState();
}

class _ViewCandidateState extends State<ViewCandidate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, color: AppColors.primaryBlack),
        ),
        title: const Text(
          'View Candidate',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 15,
          left: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile2.jpeg'),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                  child: Text('Alan devil',
                      style: titleTextStyle.copyWith(fontSize: 25))),
              const SizedBox(height: 5),
              Center(
                  child: Text('PAS 12345',
                      style: titleTextStyle.copyWith(fontSize: 14))),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.8,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.greyColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomRow(
                      title: 'Permanent Role',
                      subTitle: 'Door Supervisor',
                    ),
                    const CustomRow(
                      title: 'Work Bank Hols',
                      subTitle: 'Monday',
                    ),
                    const CustomRow(
                      title: 'DutyTime',
                      subTitle: 'Evening',
                    ),
                    const CustomRow(
                      title: 'Hourly Rate',
                      subTitle: '20\$',
                    ),
                    const CustomRow(
                      title: 'Flexible Rate',
                      subTitle: '17\$',
                    ),
                    const CustomRow(
                      title: 'Job Type',
                      subTitle: 'Supervisor',
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(CVAndPSARequest(
                                listItem: widget.listItem,
                              ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 60,
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                child: Text('Request for CV and PSA',
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
                              Get.to(InterviewInquiry(
                                listItem: widget.listItem,
                              ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 60,
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                child: Text('Enquired about an interview',
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
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                      child: PrimaryButton(
                    title: 'Back',
                    onPress: () {
                      Get.back();
                    },
                    buttonColor: AppColors.greyColor,
                    titleColor: Colors.blueGrey,
                  )),
                  const SizedBox(width: 10),
                  Expanded(
                      child: PrimaryButton(
                          title: 'Offer',
                          onPress: () {
                            Get.to(ViewJob(
                              listItem: widget.listItem,
                            ));
                          })),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
