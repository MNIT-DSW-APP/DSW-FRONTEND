import 'package:dswapp/screens/admin_screen.dart';

final List<User> userList = [
  User(
    userName: "Aditi Maheshwari",
    userId: "userIdAdmin0210",
    imageUrl: "lib/assets/images/user.jpg",
    password: "Aditi1234",
    post: Posts.Admin,
    routeName: AdminScreen.routeName,
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
  final String password;
  final Posts post;
  final String routeName;

  User({
    required this.userId,
    required this.userName,
    required this.imageUrl,
    required this.password,
    required this.post,
    required this.routeName,
  });
}
