import 'package:dswapp/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class AboutCampusCard extends StatelessWidget {
  final String description =
      "Extending into an area of over 312 acres of lush greenery, the campus of the Institute is imaginatively laid-out with a picturesque landscape. It presents a spectacle of harmony in modern architecture, and natural beauty which enthralls and inspires. Indeed, all the states and union territories of the country are represented in the undergraduate intake of the Institute (50% from Rajasthan & the other 50% from all States & Union Territories of India), thus making it a perfect example of the celebrated axiom, \"Unity in Diversity\". The institute is actively engaged in research, consultancy and development activities and collaborates with leading industrial houses and IT companies in various projects. The campus provides all essential amenities for community living like staff clubs, hospital, bank, post office, community centre, school, staff residences, gymnasium, playing fields, guest houses, and canteen etc. \n \n";

  const AboutCampusCard({super.key});
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Card(
      margin: EdgeInsets.all(width * 0.05),
      child: Container(
        width: 350,
        height: double.tryParse(description),
        decoration: const RotatedCornerDecoration(
          color: GlobalVariables.customYellow,
          geometry: BadgeGeometry(width: 60, height: 60),
        ),
        foregroundDecoration: const RotatedCornerDecoration(
            color: GlobalVariables.customGrey,
            geometry: BadgeGeometry(
              height: 60,
              width: 60,
              alignment: BadgeAlignment.bottomLeft,
            )),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 23.0),
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "About ",
                        style: TextStyle(
                          color: GlobalVariables.customGrey,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "Campus",
                        style: TextStyle(
                          color: GlobalVariables.customYellow,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0, left: 20, right: 10),
                child: Text(description,
                style: const TextStyle(color: Color.fromARGB(255, 83, 108, 119),
                fontSize: 17,
                  wordSpacing: 1.5,
                  height: 1.5,
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
