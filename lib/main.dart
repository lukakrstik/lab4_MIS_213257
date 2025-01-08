import 'package:flutter/material.dart';

import 'calendar_view.dart';

void main() {
  runApp(StudentScheduleApp());
}

class StudentScheduleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Schedule App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CalendarView(),
    );
  }
}
