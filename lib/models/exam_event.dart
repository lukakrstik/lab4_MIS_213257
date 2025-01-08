class ExamEvent {
  final String subject;
  final DateTime dateTime;
  final String locationName;
  final double latitude;
  final double longitude;

  ExamEvent({
    required this.subject,
    required this.dateTime,
    required this.locationName,
    required this.latitude,
    required this.longitude,
  });
}
