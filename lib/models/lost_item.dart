import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final itemList = [
  Item(
    id: DateTime.now().toString(),
    title: 'I lost my ui/ux book “the design of everyday things”',
    description:
        'RRECL supported Energy Champ-Thon. Hackathon in association with yshree Periwal Global School ......',
    dt: DateTime.now(),
    imageUrl: 'lib/assets/images/lost_found.png',
  ),
  Item(
    id: DateTime.now().toString(),
    title: 'I lost my ui/ux book “the design of everyday things”',
    description:
        'RRECL supported Energy Champ-Thon. Hackathon in association with yshree Periwal Global School ......',
    dt: DateTime.now(),
    imageUrl: 'lib/assets/images/lost_found.png',
  ),
  Item(
    id: DateTime.now().toString(),
    title: 'I lost my ui/ux book “the design of everyday things”',
    description:
        'RRECL supported Energy Champ-Thon. Hackathon in association with yshree Periwal Global School ......',
    dt: DateTime.now(),
    imageUrl: 'lib/assets/images/lost_found.png',
  ),
  Item(
    id: DateTime.now().toString(),
    title: 'I lost my ui/ux book “the design of everyday things”',
    description:
        'RRECL supported Energy Champ-Thon. Hackathon in association with yshree Periwal Global School ......',
    dt: DateTime.now(),
    imageUrl: 'lib/assets/images/lost_found.png',
  ),
  Item(
    id: DateTime.now().toString(),
    title: 'I lost my ui/ux book “the design of everyday things”',
    description:
        'RRECL supported Energy Champ-Thon. Hackathon in association with yshree Periwal Global School ......',
    dt: DateTime.now(),
    imageUrl: 'lib/assets/images/lost_found.png',
  ),
];

class Item {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final DateTime dt;

  Item({
    required this.id,
    required this.title,
    required this.description,
    required this.dt,
    required this.imageUrl,
  });
}
