import 'package:flutter/material.dart';

class CustomExperienceInput extends StatelessWidget {
  final String? title;
  const CustomExperienceInput({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Row(
        children: [
          Text(
            '$title',
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
              padding: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: 70,
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 12)),
              )),
        ],
      ),
    );
  }
}
