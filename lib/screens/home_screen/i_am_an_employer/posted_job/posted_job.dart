import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/screens/home_screen/i_am_an_employer/posted_job/post_job/post_job.dart';
import 'package:onguard/screens/home_screen/i_am_an_employer/posted_job/view_condidate/view_condidate.dart';
import 'package:onguard/screens/home_screen/i_am_an_employer/posted_job/widgets/custom_butto.dart';

import '../../../../../theme/app_color.dart';
import '../../../../../widgets/list_item.dart';
import '../../looking_for_job/available_job/job_available/security_guard/security_guard_detail/available_candidate/available_candidate.dart';
import 'edit_profile.dart';

class PostedJob extends StatefulWidget {
  const PostedJob({
    super.key,
  });

  @override
  State<PostedJob> createState() => _PostedJobState();
}

class _PostedJobState extends State<PostedJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posted Job'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.799,
              child: ListView.builder(
                itemCount: offeredJob.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = offeredJob[index];
                  return GestureDetector(
                    onTap: () {
                      Get.to(ViewCandidate(
                        listItem: offeredJob[index],
                      ));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
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
                            backgroundImage: AssetImage(
                                item.image ?? 'assets/images/events.jpeg'),
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
                        ],
                      )),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: 'Available\nCandidate\'s',
                    onTap: () {
                      Get.to(AvailableCandidate());
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    title: 'Post a\nJob',
                    onTap: () {
                      Get.to(const PostJob());
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    title: 'Edit\nProfile',
                    onTap: () {
                      Get.to(EditProfile());
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
