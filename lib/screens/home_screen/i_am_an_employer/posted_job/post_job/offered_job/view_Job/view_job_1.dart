import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/screens/home_screen/i_am_an_employer/posted_job/post_job/offered_job/view_Job/view_offer/view_offer.dart';
import 'package:onguard/theme/app_color.dart';
import 'package:onguard/widgets/list_item.dart';
import 'package:onguard/widgets/primary_button.dart';

import '../../../../../../../widgets/custom_row.dart';

class ViewOffer1 extends StatefulWidget {
  final ListItem listItem;
  const ViewOffer1({super.key, required this.listItem});

  @override
  State<ViewOffer1> createState() => _ViewOffer1State();
}

class _ViewOffer1State extends State<ViewOffer1> {
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
          'View Job',
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
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(widget.listItem.image!),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  '${widget.listItem.name}',
                  style: titleTextStyle.copyWith(fontSize: 25),
                ),
              ),
              const SizedBox(height: 5),
              Center(
                child: Text(
                  '${widget.listItem.jobName}',
                  style: titleTextStyle.copyWith(fontSize: 14),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.greyColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRow(
                      title: 'Business Name',
                      subTitle: widget.listItem.businessName!,
                    ),
                    CustomRow(
                      title: 'Location',
                      subTitle: widget.listItem.location!,
                    ),
                    CustomRow(
                      title: 'DutyHour',
                      subTitle: widget.listItem.dutyHour!,
                    ),
                    CustomRow(
                      title: 'DutyTime',
                      subTitle: widget.listItem.dutyTime!,
                    ),
                    CustomRow(
                      title: 'Rate',
                      subTitle: widget.listItem.rate!,
                    ),
                    CustomRow(
                      title: 'Business Address',
                      subTitle: widget.listItem.businessAddress!,
                    ),
                    CustomRow(
                      title: 'Address Code',
                      subTitle: widget.listItem.addressCode!,
                    ),
                    CustomRow(
                      title: 'Job Type',
                      subTitle: widget.listItem.jobName!,
                    ),
                    CustomRow(
                      title: 'Dress Code',
                      subTitle: widget.listItem.addressCode!,
                    ),
                    CustomRow(
                      title: 'Job Type',
                      subTitle: widget.listItem.jobName!,
                    ),
                    CustomRow(
                      title: 'Recurring',
                      subTitle: widget.listItem.recurring!,
                    ),
                    CustomRow(
                      title: 'Total Hours',
                      subTitle: widget.listItem.recurringForWeek!,
                    ),
                    CustomRow(
                      title: 'Comments',
                      subTitle: widget.listItem.comments!,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: PrimaryButton(
                          title: 'Back',
                          onPress: () {
                            Get.back();
                          },
                          buttonColor: AppColors.greyColor,
                          titleColor: AppColors.mainColor),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: PrimaryButton(
                        title: 'Apply',
                        onPress: () {
                          Get.to(
                            ViewOffer(listItem: widget.listItem),
                          );
                        },
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
