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
            '${selectedDate!.year}�� + ${selectedDate!.month}�� +${selectedDate!.day}�� ',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
