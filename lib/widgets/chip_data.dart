import 'package:flutter/material.dart';

class Chipdata extends StatelessWidget {
  final String title;
  final Color color;
  final String avText;

  const Chipdata(
      {required this.title, required this.color, required this.avText});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        title,
        style: const TextStyle(fontSize: 12),
      ),
      labelPadding: const EdgeInsets.all(4),
      backgroundColor: color,
      avatar: CircleAvatar(
        backgroundColor: Colors.white.withOpacity(0.8),
        child: Text(
          avText,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
