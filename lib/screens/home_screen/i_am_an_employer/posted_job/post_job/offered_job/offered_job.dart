import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/screens/home_screen/i_am_an_employer/posted_job/post_job/offered_job/view_Job/view_job_1.dart';
import 'package:onguard/theme/app_color.dart';
import 'package:onguard/widgets/list_item.dart';

class OfferedJob extends StatefulWidget {
  const OfferedJob({
    super.key,
  });

  @override
  State<OfferedJob> createState() => _OfferedJobState();
}

class _OfferedJobState extends State<OfferedJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Offered Job'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
        child: ListView.builder(
          itemCount: offeredJob.length,
          itemBuilder: (BuildContext context, int index) {
            final item = offeredJob[index];
            return GestureDetector(
              onTap: () {
                Get.to(ViewOffer1(
                  listItem: offeredJob[index],
                ));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage(item.image ?? 'assets/images/events.jpeg'),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.jobName ?? 'Name',
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item.typeJob ?? 'Job Type',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          item.dutyTime ?? 'Apply Date & Time',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.check, color: AppColors.primaryGreen),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.close, color: AppColors.primaryRed),
                    )
                  ],
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}
