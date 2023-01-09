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
  Faculty(name: "Prof. Mahesh Kumar Jat", about: "Civil Engg. Department", email:"dean.sw@mnit.ac.in", post: "Dean of Students Welfare", imgURL: "lib/assets/images/deansw.png"),
  Faculty(name: "Dr. Harlal Singh Mali", about: "Mechanical Engg. Department", email:"ad.sw.students@mnit.ac.in", post: "Associate Dean (Students)", imgURL: "lib/assets/images/adstudents.png"),
  Faculty(name: "Dr. Sushant Upadhyaya", about: "Chemical Engg. Department", email:"ad.sw.mess@mnit.ac.in", post: "Associate Dean (Mess)", imgURL: "lib/assets/images/admess1.png"),
  Faculty(name: "Dr. Dinesh Kumar", about: "Mechanical Engg. Department", email:"ad.sports@mnit.ac.in", post: "Associate Dean (Sports)", imgURL: "lib/assets/images/adsports.png"),
  Faculty(name: "Dr. Prerna Jain", about: "Electrical Engg. Department", email:"ad.sw.cultural@mnit.ac.in", post: "Associate Dean (Cultural)", imgURL: "lib/assets/images/adcultural.png"),
  Faculty(name: "Dr. Ritika Mahajan", about: "Department of Management Studies", email:"ad.sw.discipline@mnit.ac.in", post: "Coordinator (Wellness)", imgURL: "lib/assets/images/coordwellness.png"),
  Faculty(name: "Dr. Aneesh Prabhakar", about: "Dept. of Center for Energy & Environment", email:"coordinator.scholarship@mnit.ac.in", post: "Coordinator (Scholarship)", imgURL: "lib/assets/images/coordscholarship.png"),
  Faculty(name: "Dr. M. L. Meena", about: "Mechanical Engg. Department", email:"coordinator.uba@mnit.ac.in", post: "Coordinator (UBA)", imgURL: "lib/assets/images/coordUBA.png"),
  Faculty(name: "Dr. Pooja Nigam", about: "Dept. of Architecture and Planning", email:"coordinator.moe.flagship@mnit.ac.in", post: "Coordinator (MoE Flagship Programs)", imgURL: "lib/assets/images/coordMoE.png"),
  Faculty(name: "Dr. Nisha Verma", about: "Material Research Center", email:"coordinator.technical.society@mnit.ac.in", post: "Coordinator (Technical Societies)", imgURL: "lib/assets/images/coordTechSoc.png"),
  Faculty(name: "Dr. Swati Sharma", about: "Metallurgical and Materials Engg. Department,", email:"coordinator.sports.indoor@mnit.ac.in", post: "Coordinator (Indoor Games)", imgURL: "lib/assets/images/coordInGames.png"),
  Faculty(name: "Dr. Hemant Kumar Meena", about: "Electrical Engg. Department", email:"coordinator.sports.outdoor@mnit.ac.in", post: "Coordinator (Outdoor Games)", imgURL: "lib/assets/images/coordOutGames.png"),
  Faculty(name: "Mr. Sangeeth S Pillai", about: "Dept. of Architecture and Planning", email:"coordinator.student.magazine@mnit.ac.in", post: "Coordinator (Student Magazine)", imgURL: "lib/assets/images/coordStuMagazine.png"),
];