import 'package:calendar_scheduler/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
void main()  async {
  WidgetsFlutterBinding.ensureInitialized();  // flutter framework 준비되었는지 확인 - runApp 안에도 ensureInitialized() 있지만 initializeDateFormatting()을 먼저 실행해야 되기 때문에
  await initializeDateFormatting(); // init 번역

  runApp(
    MaterialApp(
      home : HomeScreen(),
    )
  );
}
