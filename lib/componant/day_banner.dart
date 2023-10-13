 import 'package:calendar_scheduler/constant/colors.dart';
import 'package:flutter/material.dart';

class DayBanner extends StatelessWidget {
  final DateTime? selectedDate;
  final int scheduleCnt;
  const DayBanner({required this.selectedDate, required this.scheduleCnt, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PRIMARY_COLOR,
      child: Row(
        children: [
          Text(
            '${selectedDate!.year}³â + ${selectedDate!.month}¿ù +${selectedDate!.day}ÀÏ ',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
