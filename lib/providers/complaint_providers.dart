import 'package:dswapp/models/complaint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:intl/intl.dart';

final df = new DateFormat('dd-MM-yyyy');

final List<Complaint> complaintsList = List.generate(
    4,
    (index) => Complaint(
        hostelNumber: Hostels.hostel_1,
        title: 'Complaint no. $index',
        description: lorem(paragraphs: 1, words: 25),
        date: df.format(DateTime.now()),
        isUrgent: true,
        isSolved: false));

final List<Complaint> viewedcomplaintsList = List.generate(
    4,
    (index) => Complaint(
        hostelNumber: Hostels.hostel_1,
        title: 'Complaint no. $index',
        description: lorem(paragraphs: 1, words: 65),
        date: df.format(DateTime.now()),
        isUrgent: true,
        isSolved: false));

class ComplaintProvider with ChangeNotifier {
  List<Complaint> get complaints {
    return [...complaintsList];
  }

  List<Complaint> get viewedcomplaints {
    return [...viewedcomplaintsList];
  }
}
