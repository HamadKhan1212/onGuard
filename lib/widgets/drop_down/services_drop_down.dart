import 'package:flutter/material.dart';

import '../../theme/app_color.dart';
import '../list_item.dart';

class ServicesDropDown extends StatefulWidget {
  const ServicesDropDown({super.key});

  @override
  State<ServicesDropDown> createState() => _ServicesDropDownState();
}

class _ServicesDropDownState extends State<ServicesDropDown> {
  String? offerServices;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.greyColor),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text(
            'Services Offered',
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          isExpanded: true,
          value: offerServices,
          onChanged: (String? newValue) {
            setState(() {
              offerServices = newValue!;
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
