import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/theme/app_color.dart';

import '../../../../../../widgets/list_item.dart';
import 'door_supervisor_detail/door_supervisor_detail_screen.dart';

class DoorSupervisor extends StatefulWidget {
  const DoorSupervisor({Key? key}) : super(key: key);

  @override
  State<DoorSupervisor> createState() => _DoorSupervisorState();
}

class _DoorSupervisorState extends State<DoorSupervisor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: doorSupervisor.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
            childAspectRatio: 0.8),
        itemBuilder: (BuildContext context, int index) {
          final item = doorSupervisor[index];
          return GestureDetector(
            onTap: () {
              Get.to(DoorSupervisorDetailScreen(
                  image: item.image,
                  title: item.jobName,
                  location: item.location,
                  dutyHour: item.dutyHour,
                  dutyTime: item.dutyTime,
                  rate: item.rate,
                  typeJob: item.typeJob));
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
