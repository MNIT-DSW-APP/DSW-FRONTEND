import '../widgets/upcoming_events_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../models/upcoming_events.dart';

class UpcomingEventsSlider extends StatelessWidget {
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

// final listttt = ListView.builder(
//   physics: NeverScrollableScrollPhysics(),
//   shrinkWrap: true,
//   itemBuilder: ((context, index) {
//     return UpcomingEventsCard(event: items[index]);
//   }),
//   itemCount: items.length,
// );
