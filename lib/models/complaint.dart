enum Hostels {
  hostel_1,
  hostel_2,
  hostel_3,
  hostel_4,
  hostel_5,
  hostel_6,
  hostel_7,
  hostel_8,
}

class Complaint {
  final String title;
  final String description;
  final String date;
  final bool isUrgent;
  final Hostels hostelNumber;
  final bool isSolved;

  Complaint({
    required this.hostelNumber,
    required this.title,
    required this.description,
    required this.date,
    required this.isUrgent,
    required this.isSolved,
  });

  // final List<Complaint> _complaintsList = [
  //   Complaint(
  //     hostelNumber: Hostels.hostel_8,
  //     title: "title1",
  //     description: lorem(paragraphs: 1, words: 20),
  //     date: DateTime.now().month.toString(),
  //   ),
  //   Complaint(
  //     hostelNumber: Hostels.hostel_7,
  //     title: "title2",
  //     description: lorem(paragraphs: 1, words: 20),
  //     date: DateTime.now().month.toString(),
  //   ),
  //   Complaint(
  //     hostelNumber: Hostels.hostel_6,
  //     title: "title3",
  //     description: lorem(paragraphs: 1, words: 20),
  //     date: DateTime.now().month.toString(),
  //   ),
  // ];
}
