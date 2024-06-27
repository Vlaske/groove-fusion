import 'package:flutter/material.dart';
import '../models/event.dart';

class EventCard extends StatelessWidget {
  final Event event;

  EventCard({required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              event.imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/images/placeholder_event.jpg',
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
              gradient: LinearGradient(
                colors: [Colors.orangeAccent, Colors.deepOrangeAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.eventName,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.calendar_today, size: 16, color: Colors.white70),
                    SizedBox(width: 4),
                    Text(
                      event.date,
                      style: TextStyle(
                          color: Colors.white70, fontFamily: 'Roboto'),
                    ),
                    SizedBox(width: 16),
                    Icon(Icons.access_time, size: 16, color: Colors.white70),
                    SizedBox(width: 4),
                    Text(
                      event.time,
                      style: TextStyle(
                          color: Colors.white70, fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16, color: Colors.white70),
                    SizedBox(width: 4),
                    Text(
                      event.location,
                      style: TextStyle(
                          color: Colors.white70, fontFamily: 'Roboto'),
                    ),
                    SizedBox(width: 16),
                    Icon(_getEventCategoryIcon(event.eventType),
                        size: 16,
                        color: Colors.white70), // Add icon for event category
                    SizedBox(width: 4),
                    Text(
                      _eventTypeToString(event.eventType),
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Spacer(), // Pushes the like button to the right
                    IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.white),
                      onPressed: () {
                        // Implement like button functionality
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _eventTypeToString(EventType eventType) {
    switch (eventType) {
      case EventType.battle:
        return 'Battle';
      case EventType.festival:
        return 'Festival';
      case EventType.jam:
        return 'Jam';
      case EventType.workshop:
        return 'Workshop';
      case EventType.cultureTalk:
        return 'Culture Talk';
      case EventType.showcase:
        return 'Showcase';
      case EventType.competition:
        return 'Competition';
      case EventType.other:
        return 'Other';
      default:
        return 'Other';
    }
  }

  IconData _getEventCategoryIcon(EventType eventType) {
    switch (eventType) {
      case EventType.battle:
        return Icons.emoji_events;
      case EventType.festival:
        return Icons.festival;
      case EventType.jam:
        return Icons.music_note;
      case EventType.workshop:
        return Icons.build;
      case EventType.cultureTalk:
        return Icons.chat;
      case EventType.showcase:
        return Icons.slideshow;
      case EventType.competition:
        return Icons.emoji_events;
      default:
        return Icons.more_horiz;
    }
  }
}
