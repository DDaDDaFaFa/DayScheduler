import 'package:flutter/material.dart';
import '../componant/calendar.dart';
import '../componant/schedule_card.dart';
import '../constant/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: renderFloatingActionButton(),
        body: Column(
          children: [
            Calendar(
              selectedDay: selectedDay,
              focusedDay: focusedDay,
              onDaySelected: onDaySelected,
            ),
            SizedBox(
              height: 8.0,
            ),
            TodayBanner(selectedDate: selectedDay, scheduleCnt: 4),
            _ScheduleList(),
          ],
        ),
      ),
    );
  }

  FloatingActionButton renderFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(context: context, builder: (_){
          return Container(
            color: Colors.white,
            height: 300,
          );
        },
        );
      },
      backgroundColor: PRIMARY_COLOR,
      child: Icon(Icons.add),
    );
  }

  onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
      this.focusedDay = selectedDay;
    });
  }
}

class TodayBanner extends StatelessWidget {
  final DateTime? selectedDate;
  final int scheduleCnt;
  final textStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.w600);

  TodayBanner(
      {required this.selectedDate, required this.scheduleCnt, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      color: PRIMARY_COLOR,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${selectedDate!.year}년  ${selectedDate!.month}월 ${selectedDate!.day}일',
            style: textStyle,
          ),
          Text(
            '$scheduleCnt개',
            style: textStyle,
          )
        ],
      ),
    );
  }
}

class _ScheduleList extends StatelessWidget {
  const _ScheduleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: ListView.builder(
            itemCount: 25,
            itemBuilder: (context, index) {
              return ScheduleCard(
                startTime: 12,
                endTime: 15,
                contents: 'study',
                colors: Colors.blueAccent,
              );
            }),
      ),
    );
  }
}
