import 'package:calendar_scheduler/constant/colors.dart';
import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final int startTime;
  final int endTime;
  final String contents;
  final Color colors;

  const ScheduleCard(
      {required this.startTime,
      required this.endTime,
      required this.contents,
      required this.colors,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      /*padding : EdgeInsets.all(8.0),*/
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: PRIMARY_COLOR),
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntrinsicHeight(
          child: Row(
            children: [
              _Time(
                  startTime: startTime,
                  endTime: endTime
              ),
              SizedBox(
                width: 16.0,
              ),
              _Contents(
                contents: "test",
              ),
              SizedBox(
                width: 16.0,
              ),
              _Colors(
                colors: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Time extends StatelessWidget {
  final int startTime;
  final int endTime;

  _Time({required this.startTime, required this.endTime, super.key});

  final textStyle = TextStyle(
    color: PRIMARY_COLOR,
    fontSize: 15.0,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${startTime.toString().padLeft(2, '0')}:00', style: textStyle),
        Text('${endTime.toString().padLeft(2, '0')}:00',
            style: textStyle.copyWith(
                fontSize: 10.0, fontWeight: FontWeight.w400)),
      ],
    );
  }
}

class _Contents extends StatelessWidget {
  final String contents;
  const _Contents({required this.contents, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Text(
      contents,
      textAlign: TextAlign.left,
    ));
  }
}

class _Colors extends StatelessWidget {
  final Color colors;
  const _Colors({required this.colors, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors,
        shape: BoxShape.circle,
      ),
      width: 16.0,
      height: 16.0,
    );
  }
}
