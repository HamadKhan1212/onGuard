import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/theme/app_color.dart';
import 'package:onguard/widgets/list_item.dart';

import '../../../../../../../../../../widgets/custom_row.dart';
import 'offer_job/offer_job.dart';

class ViewJob extends StatefulWidget {
  final ListItem listItem;
  const ViewJob({super.key, required this.listItem});

  @override
  State<ViewJob> createState() => _ViewJobState();
}

class _ViewJobState extends State<ViewJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, color: AppColors.primaryBlack),
        ),
        title: Text(
          'View Job',
          style: TextStyle(color: AppColors.primaryBlack),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
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
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Text('${widget.listItem.name}',
                      style: titleTextStyle.copyWith(fontSize: 25))),
              const SizedBox(
                height: 5,
              ),
              Center(
                  child: Text('${widget.listItem.jobName}',
                      style: titleTextStyle.copyWith(fontSize: 14))),
              const SizedBox(
                height: 30,
              ),
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
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.greyColor),
                      child: Center(
                          child: Text(
                        'Back',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.primaryRed,
                      ),
                      child: Center(
                          child: Text(
                        'Cancel Job',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryWhite),
                      )),
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Get.to(() => OfferJob(
                            listItem: widget.listItem,
                          ));
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.mainColor),
                      child: Center(
                          child: Text(
                        'Close Job Posting',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryWhite),
                      )),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
