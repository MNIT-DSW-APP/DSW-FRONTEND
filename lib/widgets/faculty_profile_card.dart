import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/models/faculty_about_dsw.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FacultyCard extends StatelessWidget {
  final Faculty person;

  const FacultyCard({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 10),
      width: 290,
      height: 450,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.blueGrey.shade100, blurRadius: 10)
        ]),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color.fromARGB(255, 243, 249, 255),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 240,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(person.imgURL),
                      fit: BoxFit.fill,
                    )
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                    child: Text(
                      person.name,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      maxLines: 1,
                    )
                ),
                Text(
                  person.about,
                  style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                ),
                const Text(
                  "MNIT JAIPUR",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(bottom: 1),
                  child: Row(children: [
                    const Icon(
                      Icons.email_outlined,
                      size: 12,
                      color: Colors.black,
                    ),
                    TextButton(
                      onPressed: () async {
                        var email = person.email;
                        Uri mail = Uri.parse("mailto:$email");
                        if (await launchUrl(mail)) {
                        //email app opened
                        }else{
                        //email app is not opened
                        }
                      },
                      child: Text(
                        "  ${person.email}",
                        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    )
                  ]),
                ),
                Card(
                    color: GlobalVariables.customYellow,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      " ${person.post} ",
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
