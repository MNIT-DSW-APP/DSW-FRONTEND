import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/models/faculty_about_dsw.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FacultyCard extends StatelessWidget {
  final Faculty person;

  const FacultyCard({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 10),
      width: 250,
      height: 400,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.blueGrey.shade100, blurRadius: 10)
        ]),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Color.fromARGB(255, 243, 249, 255),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset(person.imgURL),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    child: Text(
                      person.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      maxLines: 1,
                    )),
                Text(
                  person.about,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                ),
                const Text(
                  "MNIT JAIPUR",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(children: [
                    Icon(
                      Icons.email_outlined,
                      size: 12,
                      color: Colors.black,
                    ),
                    Text(
                      "  " + person.email,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ]),
                ),
                Card(
                    color: GlobalVariables.customYellow,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      " " + person.post + " ",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
