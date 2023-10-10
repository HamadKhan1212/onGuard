import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/theme/app_color.dart';
import 'package:onguard/widgets/list_item.dart';
import 'package:onguard/widgets/primary_button.dart';

import '../../../../../../../../widgets/custom_row.dart';

class ViewOffer extends StatefulWidget {
  final ListItem listItem;
  const ViewOffer({super.key, required this.listItem});

  @override
  State<ViewOffer> createState() => _ViewOfferState();
}

class _ViewOfferState extends State<ViewOffer> {
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
          'View Offer',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 30,
            left: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(widget.listItem.image!),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                  child: Text('${widget.listItem.name}',
                      style: titleTextStyle.copyWith(fontSize: 25))),
              const SizedBox(height: 5),
              Center(
                  child: Text('${widget.listItem.jobName}',
                      style: titleTextStyle.copyWith(fontSize: 14))),
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
                            titleColor: AppColors.mainColor)),
                    const SizedBox(width: 10),
                    Expanded(
                        child: PrimaryButton(
                            title: 'Reject',
                            onPress: () {},
                            buttonColor: AppColors.primaryRed)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: PrimaryButton(
                        title: 'Accept',
                        onPress: () {},
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
