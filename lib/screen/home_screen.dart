import 'package:flutter/material.dart';
import '../componant/calendar.dart';
import '../componant/dBanner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
        body : Column(
          children: [
            Calendar(),
            dayBanner(DateTime.now(),2),
           ],
        ),
        ),
    );
  }
}
