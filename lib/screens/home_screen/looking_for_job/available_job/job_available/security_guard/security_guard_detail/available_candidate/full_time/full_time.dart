import 'package:flutter/material.dart';

import '../../../../../../../../../theme/app_color.dart';
import '../../../../door_supervisors/door_supervisor.dart';
import '../../../../enforcement/enforcement.dart';
import '../../../../events/events.dart';
import '../../../../monitoring/monitoring.dart';
import '../../../security_guard.dart';

class FullTime extends StatefulWidget {
  const FullTime({super.key});

  @override
  State<FullTime> createState() => _FullTimeState();
}

class _FullTimeState extends State<FullTime> {
  int shiftFullTime = 0;
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
                    shiftFullTime = 0;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftFullTime == 0
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'SECURITY GUARD',
                    style: TextStyle(
                        color:
                            shiftFullTime == 0 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftFullTime = 1;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftFullTime == 1
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'DOOR SUPERVISOR',
                    style: TextStyle(
                        color:
                            shiftFullTime == 1 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftFullTime = 2;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftFullTime == 2
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'ENFORCEMENT',
                    style: TextStyle(
                        color:
                            shiftFullTime == 2 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftFullTime = 3;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftFullTime == 3
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'EVENTS',
                    style: TextStyle(
                        color:
                            shiftFullTime == 3 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftFullTime = 4;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftFullTime == 4
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'MONITORING',
                    style: TextStyle(
                        color:
                            shiftFullTime == 4 ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        shiftFullTime == 0
            ? const SecurityGuard()
            : shiftFullTime == 1
                ? const DoorSupervisor()
                : shiftFullTime == 2
                    ? const Enforcement()
                    : shiftFullTime == 3
                        ? const Events()
                        : const Monitoring()
      ],
    );
  }
}
