import 'package:flutter/material.dart';

import '../../theme/app_color.dart';
import '../list_item.dart';

class BusinessAreaSelection extends StatefulWidget {
  const BusinessAreaSelection({super.key});

  @override
  State<BusinessAreaSelection> createState() => _BusinessAreaSelectionState();
}

class _BusinessAreaSelectionState extends State<BusinessAreaSelection> {
  String? businessArea;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.greyColor),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text(
            'Business Area',
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          isExpanded: true,
          value: businessArea,
          onChanged: (String? newValue) {
            setState(() {
              businessArea = newValue;
            });
          },
          items: area.map<DropdownMenuItem<String>>(
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
