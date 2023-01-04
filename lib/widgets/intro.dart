// ignore_for_file: prefer_const_constructors

import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/screens/about_dsw_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Intro extends StatelessWidget {
  Intro({Key? key}) : super(key: key);

  final String info =
      "Students are the most integral part of any institution, therefore it is our top most priority to provide a healthy, safe and sound ironment to them here at the campus so that they continue to grow and excel holistically without any hindrance. The force that works tirelessly to accomplish this mission is led by the Office of Student Welfare.";

  @override
  Widget build(BuildContext context) {
    final currScaleFactor = MediaQuery.of(context).textScaleFactor;
    Size sz = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(15),
      height: sz.height * 0.95,
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
            "Dean Student's Welfare",
            style: TextStyle(
              color: Colors.white,
              fontSize: 45 * currScaleFactor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: sz.height * 0.05,
          ),
          Text(
            info,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18 * currScaleFactor,
              fontWeight: FontWeight.w300,
              wordSpacing: 1.8,
              letterSpacing: 1.5,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: sz.height * 0.069,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: GlobalVariables.customYellow,
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 15,
                )),
            onPressed: () {
              Navigator.of(context).pushNamed(AboutDSWScreen.routeName);
            },
            child: Text(
              "Know More",
              style: TextStyle(fontSize: 20 * currScaleFactor),
            ),
          ),
        ],
      ),
    );
  }
}
