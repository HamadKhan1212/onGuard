import 'package:flutter/material.dart';

import '../list_item.dart';

class ExperienceDropDown extends StatefulWidget {
  const ExperienceDropDown({super.key});

  @override
  State<ExperienceDropDown> createState() => _ExperienceDropDownState();
}

class _ExperienceDropDownState extends State<ExperienceDropDown> {
  String? selectExperience;
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
            'Experience',
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          isExpanded: true,
          value: selectExperience,
          onChanged: (String? newValue) {
            setState(() {
              selectExperience = newValue!;
            });
          },
          items: servicesList.map<DropdownMenuItem<String>>(
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
