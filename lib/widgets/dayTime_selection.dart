import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeSelection extends StatefulWidget {
  const DateTimeSelection({super.key});

  @override
  State<DateTimeSelection> createState() => _DateTimeSelectionState();
}

class _DateTimeSelectionState extends State<DateTimeSelection> {
  String helperText = "Date Of Birth";
  DateTime? selectedDate;
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      helpText: helperText,
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2200),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = selectedDate != null
        ? DateFormat('dd MMM yyyy').format(selectedDate!)
        : helperText;
    return GestureDetector(
      onTap: () {
        selectDate(context);
      },
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200),
          child: Row(
            children: [
              const Icon(Icons.date_range),
              const SizedBox(width: 10),
              Text(formattedDate),
            ],
          ),
        ),
      ),
    );
  }
}
