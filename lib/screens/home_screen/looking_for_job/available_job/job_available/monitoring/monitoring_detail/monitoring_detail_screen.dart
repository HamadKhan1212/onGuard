import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onguard/widgets/primary_button.dart';

class MonitoringDetailScreen extends StatefulWidget {
  final String? image;
  final String? title;
  final String? location;
  final String? dutyHour;
  final String? dutyTime;
  final String? rate;
  final String? typeJob;
  const MonitoringDetailScreen(
      {super.key,
      this.image,
      this.title,
      this.location,
      this.dutyHour,
      this.dutyTime,
      this.rate,
      this.typeJob});

  @override
  State<MonitoringDetailScreen> createState() => _MonitoringDetailScreenState();
}

class _MonitoringDetailScreenState extends State<MonitoringDetailScreen> {
  int? currentRating;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              image: DecorationImage(
                  image: AssetImage(
                    '${widget.image}',
                  ),
                  fit: BoxFit.cover),
            ),
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${widget.title}',
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  'Rate:${widget.rate}\$',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.location_on),
                    const SizedBox(width: 5),
                    Text('${widget.location}'),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.access_time_outlined),
                    const SizedBox(width: 5),
                    Text('Total Duty: ${widget.dutyHour}'),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.shopping_bag),
                    const SizedBox(width: 5),
                    Text('Job Type: ${widget.typeJob}'),
                  ],
                ),
                const SizedBox(height: 70),
                Row(
                  children: [
                    Expanded(
                      child: PrimaryButton(
                          onPress: () {
                            Get.back();
                          },
                          title: 'Back'),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                        child: PrimaryButton(
                      onPress: () {},
                      title: 'Apply',
                    ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
