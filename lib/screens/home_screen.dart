import 'package:flutter/material.dart';
import 'package:groovefusion/utils/constants.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/event_card.dart';
import '../models/event.dart';

class HomeScreen extends StatelessWidget {
  final List<Event> events = [
    Event(
      imageUrl: wocProject,
      eventName: 'WOC Project',
      location: 'Zappa Barka',
      time: '07:00 PM',
      date: '30th June',
      eventType: EventType.battle,
    ),
    Event(
      imageUrl: skullzOut,
      eventName: 'Skullz Out',
      location: 'Dorcol Platz',
      time: '06:00 PM',
      date: '5th July',
      eventType: EventType.festival,
    ),
    Event(
        imageUrl: bobWorkshop,
        eventName: 'Bobskop Hip Hop Workshop',
        location: 'Dobracina 30A',
        time: '02:00 PM',
        date: '5th July',
        eventType: EventType.workshop),
    Event(
      imageUrl: senseTheWave,
      eventName: 'Sense the Wave',
      location: 'KC Grad',
      time: '02:00 PM',
      date: '5th July',
      eventType: EventType.battle,
    ),
    Event(
        imageUrl: seshBattles,
        eventName: 'Sesh Battles',
        location: 'KC Magacin',
        time: '02:00 PM',
        date: '5th July',
        eventType: EventType.battle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Dancer 👋',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              'Discover the best hip hop events',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[700]),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.orange),
                hintText: 'Search for events...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: Icon(Icons.filter_alt, color: Colors.orange),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming events',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextButton(
                  onPressed: () {},
                  child:
                      Text('View all', style: TextStyle(color: Colors.orange)),
                ),
              ],
            ),
            SizedBox(height: 16),
            ...events.map((event) => Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: EventCard(event: event),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
