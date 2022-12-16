// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/models/upcoming_events.dart';
import 'package:flutter/material.dart';

class UpcomingEventsCard extends StatelessWidget {
  final UpcomingEvents event;

  const UpcomingEventsCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.8,
      margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Image.asset("lib/assets/images/carousel_image1.png"),
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.grey,
                ),
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )),
          child: Row(children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                event.date,
                style: TextStyle(
                  color: GlobalVariables.customGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                event.title,
                style: TextStyle(
                  color: GlobalVariables.customGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
