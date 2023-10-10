import 'package:flutter/material.dart';

import '../list_item.dart';

class ShiftSelection extends StatefulWidget {
  const ShiftSelection({super.key});

  @override
  State<ShiftSelection> createState() => _ShiftSelectionState();
}

class _ShiftSelectionState extends State<ShiftSelection> {
  String? selectedDay;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text(
            'Select day',
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          isExpanded: true,
          value: selectedDay,
          onChanged: (String? newValue) {
            setState(() {
              selectedDay = newValue!;
            });
          },
          items: daysList.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
