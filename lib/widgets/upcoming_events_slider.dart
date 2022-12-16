import '../widgets/upcoming_events_card.dart';
import 'package:flutter/material.dart';
import '../models/upcoming_events.dart';

class UpcomingEventsSlider extends StatelessWidget {
  const UpcomingEventsSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          UpcomingEventsCard(event: items[0]),
          UpcomingEventsCard(event: items[0]),
          UpcomingEventsCard(event: items[0]),
          UpcomingEventsCard(event: items[0]),
        ],
      ),
    );
  }
}
