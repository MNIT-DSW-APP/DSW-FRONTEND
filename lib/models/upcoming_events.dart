import 'package:flutter/material.dart';

final items = [
  UpcomingEvents(
    id: "a",
    title: "UI/UX competition - DSW..",
    date: "NOV 15",
    imageUrl: "lib/assets/images/carousel_image1.png",
  ),
  UpcomingEvents(
    id: "b",
    title: "UI/UX competition - DSW..",
    date: "NOV 15",
    imageUrl: "lib/assets/images/carousel_image1.png",
  ),
  UpcomingEvents(
    id: "c",
    title: "UI/UX competition - DSW..",
    date: "NOV 15",
    imageUrl: "lib/assets/images/carousel_image1.png",
  ),
  UpcomingEvents(
    id: "d",
    title: "UI/UX competition - DSW..",
    date: "NOV 15",
    imageUrl: "lib/assets/images/carousel_image1.png",
  ),
];

class UpcomingEvents {
  final String id;
  final String title;
  final String date;
  final String imageUrl;

  UpcomingEvents({
    required this.id,
    required this.title,
    required this.date,
    required this.imageUrl,
  });
}
