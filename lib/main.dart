import 'package:calendar_scheduler/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
void main()  async {
  WidgetsFlutterBinding.ensureInitialized();  // flutter framework �غ�Ǿ����� Ȯ�� - runApp �ȿ��� ensureInitialized() ������ initializeDateFormatting()�� ���� �����ؾ� �Ǳ� ������
  await initializeDateFormatting(); // init ����

  runApp(
    MaterialApp(
      home : HomeScreen(),
    )
  );
}
