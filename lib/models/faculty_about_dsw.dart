class Faculty{
  final String name;
  final String about;
  final String email;
  final String post;
  final String imgURL;

  Faculty({
    required this.name,
    required this.about,
    required this.email,
    required this.post,
    required this.imgURL
  });
}

final List<Faculty> facultyList = [
  Faculty(
      name: "Prof. Mahesh Kumar Jat",
      about: "About person 1",
      email:"dummyEmail@gmail.com",
      post: "Associate Dean",
      imgURL: "lib/assets/images/user.jpg"),
  Faculty(name: "Person 2", about: "About person 2", email:"dummyEmail@gmail.com", post: "Associate Dean", imgURL: "lib/assets/images/user.jpg"),
  Faculty(name: "Person 3", about: "About person 3", email:"dummyEmail@gmail.com", post: "Associate Dean", imgURL: "lib/assets/images/user.jpg"),
  Faculty(name: "Person 4", about: "About person 4", email:"dummyEmail@gmail.com", post: "Associate Dean", imgURL: "lib/assets/images/user.jpg"),
  Faculty(name: "Person 5", about: "About person 5", email:"dummyEmail@gmail.com", post: "Associate Dean", imgURL: "lib/assets/images/user.jpg"),
  Faculty(name: "Person 6", about: "About person 6", email:"dummyEmail@gmail.com", post: "Associate Dean", imgURL: "lib/assets/images/user.jpg"),
  Faculty(name: "Person 7", about: "About person 7", email:"dummyEmail@gmail.com", post: "Associate Dean", imgURL: "lib/assets/images/user.jpg"),
  Faculty(name: "Person 8", about: "About person 8", email:"dummyEmail@gmail.com", post: "Associate Dean", imgURL: "lib/assets/images/user.jpg"),
  Faculty(name: "Person 9", about: "About person 9", email:"dummyEmail@gmail.com", post: "Associate Dean", imgURL: "lib/assets/images/user.jpg"),
  Faculty(name: "Person 10", about: "About person 10", email:"dummyEmail@gmail.com", post: "Associate Dean", imgURL: "lib/assets/images/user.jpg"),
];