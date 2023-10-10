import 'package:flutter/material.dart';

class CustomAvailabilityRow extends StatefulWidget {
  final String? title;
  const CustomAvailabilityRow({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  State<CustomAvailabilityRow> createState() => _CustomAvailabilityRowState();
}

class _CustomAvailabilityRowState extends State<CustomAvailabilityRow> {
  TimeOfDay? startingTime;
  TimeOfDay? endingTime;

  Future<void> _selectStartTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: startingTime ?? TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        startingTime = pickedTime;
      });
    }
  }

  Future<void> _selectEndTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: endingTime ?? TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        endingTime = pickedTime;
      });
    }
  }

  // Helper function to format TimeOfDay as a string with two-digit minutes
  String formatTime(TimeOfDay? time) {
    if (time == null) return '';
    return '${time.hour}:${time.minute.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${widget.title}',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Row(
        children: [
          GestureDetector(
            onTap: () async {
              await _selectStartTime(context);
              setState(() {});
            },
            child: Row(
              children: [
                Text(
                  'Starting Time: ',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(formatTime(startingTime)),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () async {
              await _selectEndTime(context);
              setState(() {});
            },
            child: Row(
              children: [
                Text(
                  'Ending Time: ',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(formatTime(endingTime)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
