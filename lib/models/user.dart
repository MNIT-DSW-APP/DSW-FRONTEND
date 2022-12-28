import 'package:dswapp/models/club_member.dart';
import 'package:flutter/cupertino.dart';

final List<User> userList = [
  User(
    email: 'dbsjd',
    userName: "Aditi Maheshwari",
    userId: "userIdAdmin0210",
    imageUrl: "lib/assets/images/user.jpg",
    password: "Aditi1234",
    post: Posts.Admin,
    contactNo: '9876543210',
    hostelNumber: 12,
  )
];

enum Posts {
  Admin,
  General_Secretary,
  Student,
  Coordinator,
}

class User {
  final String userName;
  final String userId;
  final String imageUrl;
  final String email;
  final String password;
  final Posts post;
  String? studentId;
  int? pointsEarned;
  int? hostelNumber;
  final String contactNo;
  List<String>? achivements;
  List<ClubMember>? clubs;
  // final String routeName;

  User({
    required this.contactNo,
    required this.userId,
    required this.userName,
    required this.imageUrl,
    required this.password,
    required this.post,
    this.hostelNumber,
    this.pointsEarned,
    this.studentId,
    this.achivements,
    this.clubs,
    required this.email,
  });
}

class UserProvider with ChangeNotifier {
  final _user = User(
      email: '2020umt1366@mnit.ac.in',
      contactNo: '9876543210',
      userId: 'Aditim210',
      userName: "Aditi Maheshwari",
      imageUrl: "lib/assets/images/user.jpg",
      password: 'password',
      post: Posts.Student,
      hostelNumber: 12,
      pointsEarned: 33,
      studentId: '2020umt1366',
      achivements: [
        'Winner of Inktober - The Mavericks',
        'Class Representative - Batch 2020 - 24',
        'Winner of Inktober - The Mavericks',
        'Class Representative - Batch 2020 - 24',
      ],
      clubs: [
        ClubMember(
          clubName: 'The Mavericks',
          post: 'Executive',
          date: 'June 22',
        ),
        ClubMember(
          clubName: 'Photography Club',
          post: 'Member',
          date: 'June 22',
        ),
        ClubMember(
          clubName: 'Poetry Club',
          post: 'Member',
          date: 'June 22',
        ),
      ]);

  User get user {
    return _user;
  }
}
