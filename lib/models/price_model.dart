class Date
{
  final int id;
  final String dat;
  Date({
    required this.id,
    required this.dat,

    });
  @override
  List<Object> get props =>[id,dat];

  static List<Date> dates= [
    Date(id: 1, dat: "Today"),
    Date(id: 2, dat: "Tomorrow"),
    Date(id: 3, dat: "This week")

  ];
  static List<Date> arr= [
    Date(id: 1, dat: "Robotics"),
    Date(id: 2, dat: "Aeromodelling"),
    Date(id: 3, dat: "Mavericks"),
    Date(id: 4, dat: "Travel and Heritage"),
    Date(id: 5, dat: "Music and Dance"),
    Date(id: 6, dat: "Computer Science"),

  ];
  static List<Date> arr2= [
    Date(id: 1, dat: "Technical"),
    Date(id: 2, dat: "Cultural"),
  ];

}