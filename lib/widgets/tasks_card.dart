// ignore_for_file: prefer_const_constructors

// import 'dart:html';
import 'dart:io';

import 'package:intl/intl.dart';
import 'package:dswapp/models/lost_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class TasksCard extends StatelessWidget {
  final List<String> description = [
    "\u2022 Student Identity Card",
    "\u2022 Orientation program for fresh entrants.",
    "\u2022 Financial assistance to students, travel grants, various scholarships and education loans",
    "\u2022 Railways Concession.",
    "\u2022 Coordinate activities under MoE Flagship Programmes such as Ek Bharat Shreshtha Bharat (EBSB).",
    "\u2022 Organization of Special Days as order of MOE",
    "\u2022 Activities of Creative Arts & Cultural Society, Sports, Alumni Affairs, Unnat Bharat Abhiyan.",
    "\u2022 Coordinating anti-ragging activities.",
    "\u2022 Student Insurance & Character Certificate issuance activities."
  ];
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.all(width * 0.05),
      child: Container(
        width: 380,
        height: 700,
        decoration: const RotatedCornerDecoration(
          color: Color.fromRGBO(255, 214, 41, 1),
          geometry: BadgeGeometry(width: 60, height: 60),
        ),
        foregroundDecoration: RotatedCornerDecoration(
            color: Color.fromRGBO(49, 56, 66, 1),
            geometry: BadgeGeometry(
              height: 60,
              width: 60,
              alignment: BadgeAlignment.bottomLeft,
            )),
        child: Stack(
          children: [
            Positioned(
              top: 25,
              left: 30,
              child: Container(
                height: 78,
                width: 304,
                child: Text(
                  "Key Tasks of Dean Student Welfare Office",
                  style: TextStyle(
                    color: Color.fromRGBO(49, 56, 66, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 127,
              left: 20,
              child: Container(
                height: 513,
                width: 331,
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    return Text(
                      description[index],
                      style: TextStyle(
                        color: Color.fromARGB(255, 83, 108, 119),
                        fontSize: 17,
                        wordSpacing: 1.5,
                        height: 1.5,
                      ),
                      overflow: TextOverflow.clip,
                    );
                  }),
                  itemCount: description.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
