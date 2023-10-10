import 'package:flutter/material.dart';

import '../../theme/app_color.dart';
import '../list_item.dart';

class RecurringDropDown extends StatefulWidget {
  const RecurringDropDown({super.key});

  @override
  State<RecurringDropDown> createState() => _RecurringDropDownState();
}

class _RecurringDropDownState extends State<RecurringDropDown> {
  String? selectOption;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.greyColor),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text(
            'Recurring',
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          isExpanded: true,
          value: selectOption,
          onChanged: (String? newValue) {
            setState(() {
              selectOption = newValue!;
            });
          },
          items: option.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(fontSize: 15),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
