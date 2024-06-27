enum EventType {
  battle,
  festival,
  jam,
  workshop,
  cultureTalk,
  showcase,
  competition,
  other,
}

class Event {
  final String imageUrl;
  final String eventName;
  final String location;
  final String time;
  final String date;
  final EventType eventType; // Added EventType field

  Event({
    required this.imageUrl,
    required this.eventName,
    required this.location,
    required this.time,
    required this.date,
    required this.eventType,
  });
}
