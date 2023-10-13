import 'package:flutter/material.dart';
import '../componant/calendar.dart';
import '../constant/colors.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
        body : Column(
          children: [
            Calendar(),
            TodayBanner(selectedDate: DateTime.now(), scheduleCnt: 4),
           ],
        ),
        ),
    );
  }
}


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
            '${selectedDate!.year}년 + ${selectedDate!.month}월 +${selectedDate!.day}일 ',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

