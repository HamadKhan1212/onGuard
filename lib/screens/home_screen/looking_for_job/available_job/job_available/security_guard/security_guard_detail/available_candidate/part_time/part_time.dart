import 'package:flutter/material.dart';

import '../../../../../../../../../theme/app_color.dart';
import '../../../../door_supervisors/door_supervisor.dart';
import '../../../../enforcement/enforcement.dart';
import '../../../../events/events.dart';
import '../../../../monitoring/monitoring.dart';
import '../../../security_guard.dart';

class PartTime extends StatefulWidget {
  const PartTime({super.key});

  @override
  State<PartTime> createState() => _PartTimeState();
}

class _PartTimeState extends State<PartTime> {
  int shiftPartTime = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftPartTime = 0;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftPartTime == 0
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'SECURITY GUARD',
                    style: TextStyle(
                        color:
                            shiftPartTime == 0 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftPartTime = 1;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftPartTime == 1
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'DOOR SUPERVISOR',
                    style: TextStyle(
                        color:
                            shiftPartTime == 1 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftPartTime = 2;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftPartTime == 2
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'ENFORCEMENT',
                    style: TextStyle(
                        color:
                            shiftPartTime == 2 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftPartTime = 3;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftPartTime == 3
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'EVENTS',
                    style: TextStyle(
                        color:
                            shiftPartTime == 3 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftPartTime = 4;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftPartTime == 4
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'MONITORING',
                    style: TextStyle(
                        color:
                            shiftPartTime == 4 ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        shiftPartTime == 0
            ? const SecurityGuard()
            : shiftPartTime == 1
                ? const DoorSupervisor()
                : shiftPartTime == 2
                    ? const Enforcement()
                    : shiftPartTime == 3
                        ? const Events()
                        : const Monitoring()
      ],
    );
  }
}
