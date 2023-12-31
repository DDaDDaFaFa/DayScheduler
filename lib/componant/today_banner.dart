import 'package:calendar_scheduler/constant/colors.dart';
import 'package:flutter/material.dart';

class TodayBanner extends StatelessWidget {
  final DateTime? selectedDate;
  final int scheduleCnt;
  const TodayBanner({required this.selectedDate, required this.scheduleCnt, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PRIMARY_COLOR,
      child: Row(
        children: [
          Text(
            '${selectedDate!.year}�� + ${selectedDate!.month}�� +${selectedDate!.day}�� ',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
