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

class AboutDSWCArd extends StatelessWidget {
  final String description =
      "Students are the most integral part of any institution, therefore it is our top most priority to provide a healthy, safe and and sound environment to them here at the campus so that they continue to grow and excel holistically without any hindrance. The force that works tirelessly to accomplish this mission is led by the Office of Student Welfare.";
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.all(width * 0.05),
      child: Container(
        width: 380,
        height: 440,
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
              // right: 20,
              child: Text(
                "About DSW",
                style: TextStyle(
                  color: Color.fromRGBO(49, 56, 66, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 84,
              left: 30,
              child: Container(
                height: 320,
                width: 297,
                child: Text(
                  description,
                  style: TextStyle(
                    color: Color.fromARGB(255, 83, 108, 119),
                    fontSize: 17,
                    wordSpacing: 1.5,
                    height: 1.5,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
