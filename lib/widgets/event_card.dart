// ignore_for_file: prefer_const_constructors

// import 'dart:html';
import 'package:dswapp/constants.dart';
import 'package:dswapp/models/event.dart';
import 'package:intl/intl.dart';
import 'package:dswapp/models/lost_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class EventCard extends StatelessWidget {
  final Event item;

  const EventCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 245, 242, 242),
          blurRadius: 10,
        )
      ]),
      child: Card(
        margin: EdgeInsets.all(width * 0.01),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          width: 400,
          height: 250,
          decoration: const RotatedCornerDecoration(
            color: Color.fromRGBO(255, 214, 41, 1),
            geometry: BadgeGeometry(
              width: 40,
              height: 40,
              cornerRadius: 15,
            ),
          ),
          foregroundDecoration: RotatedCornerDecoration(
              color: Color.fromRGBO(49, 56, 66, 1),
              geometry: BadgeGeometry(
                height: 40,
                width: 40,
                cornerRadius: 15,
                alignment: BadgeAlignment.bottomLeft,
              )),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 25, right: 25, bottom: 25),
              child: Text(
                item.title,
                style: TextStyle(
                  color: customGrey,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  wordSpacing: 1.5,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "${item.startDate} to ${item.endDate}",
              style: TextStyle(
                color: customGrey,
                fontSize: 14,
                fontWeight: FontWeight.w200,
              ),
            ),
            Spacer(),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                "View More",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
