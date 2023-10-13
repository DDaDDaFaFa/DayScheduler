// TODO Implement this library.
import 'package:flutter/material.dart';
class dayBanner extends StatelessWidget {
  final DateTime? selectedDate;
  final int scheduleCnt;
  const dayBanner({required this.selectedDate,required this.scheduleCnt, super.key});

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
