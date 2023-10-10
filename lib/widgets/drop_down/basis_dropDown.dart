import 'package:flutter/material.dart';

import '../../theme/app_color.dart';
import '../list_item.dart';

class BasisDropDown extends StatefulWidget {
  const BasisDropDown({super.key});

  @override
  State<BasisDropDown> createState() => _BasisDropDownState();
}

class _BasisDropDownState extends State<BasisDropDown> {
  String? basics;
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
            'Basis',
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          isExpanded: true,
          value: basics,
          onChanged: (String? newValue) {
            setState(() {
              basics = newValue!;
            });
          },
          items: basis.map<DropdownMenuItem<String>>(
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
