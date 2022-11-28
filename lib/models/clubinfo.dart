import 'package:dswapp/models/event.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

final clubList = [
  Club(
    id: "4",
    title: "The Mavericks",
    imageUrl: "lib/assets/images/the_mavericks.png",
    description: lorem(paragraphs: 1, words: 25),
    isClubOfTheMonth: true,
    announcements: [
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
    ],
    upcomEvents: EventsList,
    concludedEvents: EventsList,
  ),
  Club(
    id: "3",
    title: "E=MC2",
    imageUrl: "lib/assets/images/emc2.png",
    description: lorem(paragraphs: 1, words: 25),
    isClubOfTheMonth: true,
    announcements: [
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
    ],
    upcomEvents: EventsList,
    concludedEvents: EventsList,
  ),
  Club(
    id: "2",
    title: "Think India",
    imageUrl: "lib/assets/images/think_india.png",
    description: lorem(paragraphs: 1, words: 25),
    isClubOfTheMonth: true,
    announcements: [
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
    ],
    upcomEvents: EventsList,
    concludedEvents: EventsList,
  ),
  Club(
    id: "1",
    title: "The Mavericks",
    imageUrl: "lib/assets/images/the_mavericks.png",
    description: lorem(paragraphs: 1, words: 25),
    isClubOfTheMonth: true,
    announcements: [
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
      lorem(
        paragraphs: 1,
        words: 20,
      ),
    ],
    upcomEvents: EventsList,
    concludedEvents: EventsList,
  ),
];

class Club {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  bool isClubOfTheMonth = false;
  final List<String> announcements;
  final List<Event> upcomEvents;
  final List<Event> concludedEvents;

  Club({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.isClubOfTheMonth,
    required this.announcements,
    required this.upcomEvents,
    required this.concludedEvents,
  });
}
