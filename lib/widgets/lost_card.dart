// ignore_for_file: prefer_const_constructors

// import 'dart:html';
import 'package:dswapp/constants/global_variables.dart';
import 'package:intl/intl.dart';
import 'package:dswapp/models/lost_item.dart';
import 'package:flutter/material.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class LostCard extends StatelessWidget {
  final Item item;

  const LostCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(255, 245, 242, 242),
          blurRadius: 5,
        )
      ]),
      child: Card(
        margin: EdgeInsets.all(width * 0.05),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          width: 380,
          height: 250,
          decoration: const RotatedCornerDecoration(
            color: GlobalVariables.customYellow,
            geometry: BadgeGeometry(
              width: 35,
              height: 35,
              cornerRadius: 15,
            ),
          ),
          foregroundDecoration: RotatedCornerDecoration(
              color: GlobalVariables.customGrey,
              geometry: BadgeGeometry(
                height: 35,
                width: 35,
                alignment: BadgeAlignment.bottomLeft,
                cornerRadius: 15,
              )),
          child: Stack(
            // fit: StackFit.expand,
            children: [
              Positioned(
                top: 15,
                left: 20,
                right: 20,
                child: Text(
                  item.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                top: 88,
                left: 17,
                child: Container(
                  height: 130,
                  width: 126,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(item.imageUrl),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 90,
                left: 164,
                child: SizedBox(
                  height: 118,
                  width: 201,
                  child: Text(
                    item.description,
                    style: TextStyle(
                      color: GlobalVariables.customGrey,
                      fontSize: 13,
                      wordSpacing: 5.0,
                      height: 1.8,
                    ),
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
              Positioned(
                top: 207,
                left: 289,
                child: Text(
                  DateFormat('EEEEE', 'en_us').format(item.dt),
                  style: TextStyle(
                    color: GlobalVariables.customGrey,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
