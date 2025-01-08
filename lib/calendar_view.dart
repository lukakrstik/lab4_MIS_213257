import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'event_list_view.dart';
import 'models/exam_event.dart';

class CalendarView extends StatefulWidget {
  @override
  _CalendarViewState createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  Map<DateTime, List<ExamEvent>> events = {
    DateTime.now(): [
      ExamEvent(
        subject: 'Mathematics Exam',
        dateTime: DateTime.now().add(const Duration(days: 20)),
        locationName: 'University Hall A',
        latitude: 41.9981,
        longitude: 21.4254,
      ),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exam Schedule")),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2022, 1, 1),
            lastDay: DateTime.utc(2025, 12, 31),
            focusedDay: DateTime.now(),
            eventLoader: (date) => events[date] ?? [],
            onDaySelected: (selectedDay, focusedDay) {
              if (events[selectedDay] != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EventListView(events: events[selectedDay]!)),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
