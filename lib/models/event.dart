import 'package:intl/intl.dart';

final EventsList = [
  Event(
    title:
        "Lecture on \"Science and Scientist in New Millennium: A brief History of he Future"
        ", isUpcoming: isUpcoming",
    isUpcoming: true,
    startDate: DateFormat.yMd().format(DateTime.now()),
    endDate: DateFormat.yMd().format(DateTime.now()),
  ),
  Event(
    title:
        "COVID Vaccination Camp on 6th August for Record 580 Doses for Students/Faculty And Staff",
    isUpcoming: true,
    startDate: DateFormat.yMd().format(DateTime.now()),
    endDate: DateFormat.yMd().format(DateTime.now()),
  ),
  Event(
    title:
        "Workshop on Boot camp on Innovative Product Design By Auto-desk Fusion 360",
    isUpcoming: true,
    startDate: DateFormat.yMd().format(DateTime.now()),
    endDate: DateFormat.yMd().format(DateTime.now()),
  ),
  Event(
    title:
        "Workshop on MNIT CAM Society Members Won Autonom India 2021 Competition Organised by SAE-NIS",
    isUpcoming: true,
    startDate: DateFormat.yMd().format(DateTime.now()),
    endDate: DateFormat.yMd().format(DateTime.now()),
  ),
  Event(
    title:
        "Lecture on \"Science and Scientist in New Millennium: A brief History of he Future",
    isUpcoming: false,
    startDate: DateFormat.yMd().format(DateTime.now()),
    endDate: DateFormat.yMd().format(DateTime.now()),
  ),
  Event(
    title:
        "Lecture on \"Science and Scientist in New Millennium: A brief History of he Future"
        ", isUpcoming: isUpcoming",
    isUpcoming: false,
    startDate: DateFormat.yMd().format(DateTime.now()),
    endDate: DateFormat.yMd().format(DateTime.now()),
  ),
  Event(
    title:
        "Lecture on \"Science and Scientist in New Millennium: A brief History of he Future"
        ", isUpcoming: isUpcoming",
    isUpcoming: false,
    startDate: DateFormat.yMd().format(DateTime.now()),
    endDate: DateFormat.yMd().format(DateTime.now()),
  ),
];

class Event {
  final String title;
  final String endDate;
  final String startDate;
  final bool isUpcoming;

  Event({
    required this.startDate,
    required this.endDate,
    required this.title,
    required this.isUpcoming,
  });
}
