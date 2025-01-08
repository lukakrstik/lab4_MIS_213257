import 'package:flutter/material.dart';
import 'map_view.dart';
import 'models/exam_event.dart';

class EventListView extends StatelessWidget {
  final List<ExamEvent> events;

  EventListView({required this.events});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exam Details")),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return ListTile(
            title: Text(event.subject),
            subtitle: Text(
                "Date: ${event.dateTime}\nLocation: ${event.locationName}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapView(event: event),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
