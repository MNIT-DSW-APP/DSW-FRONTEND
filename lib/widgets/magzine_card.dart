// ignore_for_file: prefer_const_constructors

// import 'dart:html';
import 'dart:io';

import 'package:dswapp/constants.dart';
import 'package:intl/intl.dart';
import 'package:dswapp/models/lost_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class MagzineCard extends StatelessWidget {
  final String description =
      "As 2021 comes to an end, the Crescendo is here to bid adieu to the year with another editi on full of business insights. We bring you the December edition of MNIT’s official Eco-....";
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.all(width * 0.05),
      child: Container(
        width: 390,
        height: 300,
        decoration: const RotatedCornerDecoration(
          color: customYellow,
          geometry: BadgeGeometry(width: 45, height: 45),
        ),
        foregroundDecoration: RotatedCornerDecoration(
            color: customGrey,
            geometry: BadgeGeometry(
              height: 45,
              width: 45,
              alignment: BadgeAlignment.bottomLeft,
            )),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 20,
              right: 20,
              child: Text(
                "Magzine MNIT",
                style: TextStyle(
                  color: customGrey,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 59,
              left: 20,
              child: Container(
                height: 164,
                width: 136,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('lib/assets/images/magzine.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 55,
              left: 164,
              child: Container(
                height: 164,
                width: 186,
                child: Text(
                  description,
                  style: TextStyle(
                    color: Color.fromRGBO(47, 71, 81, 1),
                    fontSize: 13,
                    wordSpacing: 2.0,
                    height: 1.8,
                  ),
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
            Positioned(
              top: 251,
              left: 93,
              child: Text(
                "Take me to the magzine >>>",
                style: TextStyle(
                  color: Color.fromRGBO(77, 102, 166, 1),
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
