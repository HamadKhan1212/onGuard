import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String title;
  final String subTitle;
  const CustomRow({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title, style: titleTextStyle),
      subtitle: Text(subTitle),
    );
  }
}

const TextStyle titleTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.w500,
);
