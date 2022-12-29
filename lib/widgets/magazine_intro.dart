// ignore_for_file: prefer_const_constructors

import 'package:dswapp/constants/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MagazineIntro extends StatelessWidget {
  MagazineIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(15),
      height: sz.height - 200.0,
      width: sz.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/bg_image_landing_page.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Magazine",
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),

          SizedBox(
            height: 65,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: GlobalVariables.customYellow,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 9)),
            onPressed: () {},
            child: Text(
              "Know More",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
