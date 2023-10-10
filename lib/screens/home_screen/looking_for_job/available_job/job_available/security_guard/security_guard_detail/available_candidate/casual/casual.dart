import 'package:flutter/material.dart';

import '../../../../../../../../../theme/app_color.dart';
import '../../../../door_supervisors/door_supervisor.dart';
import '../../../../enforcement/enforcement.dart';
import '../../../../events/events.dart';
import '../../../../monitoring/monitoring.dart';
import '../../../security_guard.dart';

class Casual extends StatefulWidget {
  const Casual({super.key});

  @override
  State<Casual> createState() => _CasualState();
}

class _CasualState extends State<Casual> {
  int shiftCasual = 0;
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
                    shiftCasual = 0;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftCasual == 0
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'SECURITY GUARD',
                    style: TextStyle(
                        color: shiftCasual == 0 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftCasual = 1;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftCasual == 1
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'DOOR SUPERVISOR',
                    style: TextStyle(
                        color: shiftCasual == 1 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftCasual = 2;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftCasual == 2
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'ENFORCEMENT',
                    style: TextStyle(
                        color: shiftCasual == 2 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftCasual = 3;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftCasual == 3
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'EVENTS',
                    style: TextStyle(
                        color: shiftCasual == 3 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    shiftCasual = 4;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: shiftCasual == 4
                          ? AppColors.mainColor
                          : AppColors.primaryWhite),
                  child: Text(
                    'MONITORING',
                    style: TextStyle(
                        color: shiftCasual == 4 ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        shiftCasual == 0
            ? const SecurityGuard()
            : shiftCasual == 1
                ? const DoorSupervisor()
                : shiftCasual == 2
                    ? const Enforcement()
                    : shiftCasual == 3
                        ? const Events()
                        : const Monitoring()
      ],
    );
  }
}
