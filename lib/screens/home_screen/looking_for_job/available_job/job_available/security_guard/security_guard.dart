import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/screens/home_screen/looking_for_job/available_job/job_available/security_guard/security_guard_detail/security_guard_detail_screen.dart';
import 'package:onguard/theme/app_color.dart';

import '../../../../../../widgets/list_item.dart';

class SecurityGuard extends StatefulWidget {
  const SecurityGuard({Key? key}) : super(key: key);

  @override
  State<SecurityGuard> createState() => _SecurityGuardState();
}

class _SecurityGuardState extends State<SecurityGuard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: securityGuard.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
            childAspectRatio: 0.8),
        itemBuilder: (BuildContext context, int index) {
          final item = securityGuard[index];
          return GestureDetector(
            onTap: () {
              Get.to(
                SecurityGuardDetailScreen(
                    image: item.image,
                    title: item.jobName,
                    location: item.location,
                    dutyHour: '8 Hours',
                    dutyTime: 'Mid Night',
                    rate: '15',
                    typeJob: 'Full Time Job'),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(item.image ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  item.jobName ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.location_on),
                    Text(item.location ?? '')
                  ],
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
