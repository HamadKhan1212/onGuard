import 'package:flutter/material.dart';

import '../../theme/app_color.dart';
import '../list_item.dart';

class FlexibleRateDropDown extends StatefulWidget {
  const FlexibleRateDropDown({super.key});

  @override
  State<FlexibleRateDropDown> createState() => _FlexibleRateDropDownState();
}

class _FlexibleRateDropDownState extends State<FlexibleRateDropDown> {
  String? selectOption;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.greyColor),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: const Text('Flexible Rate'),
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
