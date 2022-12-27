import 'package:flutter/material.dart';

class InputChipData {
  final String label;
  final String avText;
  final Color color;

  InputChipData({
    required this.label,
    required this.avText,
    required this.color,
  });

  List<InputChipData> get chips {
    return [..._inputChips];
  }
}

final List<InputChipData> _inputChips = [
  InputChipData(
    label: 'Active',
    avText: 'A',
    color: const Color.fromRGBO(185, 62, 62, 1),
  ),
  InputChipData(
    label: 'Hostel',
    avText: 'H',
    color: const Color.fromRGBO(7, 163, 69, 1),
  ),
  InputChipData(
    label: 'Hostel',
    avText: 'H',
    color: const Color.fromRGBO(7, 163, 69, 1),
  ),
  InputChipData(
    label: 'Hostel',
    avText: 'H',
    color: const Color.fromRGBO(7, 163, 69, 1),
  ),
  InputChipData(
    label: 'Hostel',
    avText: 'H',
    color: const Color.fromRGBO(7, 163, 69, 1),
  ),
];
