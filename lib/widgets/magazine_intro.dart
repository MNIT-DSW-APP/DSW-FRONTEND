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
      height: sz.height - 300.0,
      width: sz.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/magazine__banner.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(40),
            child:
            Text(
              "Magazine",
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
              ),
              textAlign: TextAlign.left,
            ),
          ),


          SizedBox(
            height: 40,
          ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //       primary: GlobalVariables.customYellow,
          //       padding: EdgeInsets.symmetric(horizontal: 25, vertical: 9)),
          //   onPressed: () {},
          //   child: Text(
          //     "Know More",
          //     style: TextStyle(fontSize: 20),
          //   ),
          // ),



          Container(
            //margin: ,


            margin: new EdgeInsets.symmetric(horizontal: 100.0),
            child: TextField(


              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffffffff),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText:"Search Magazine",
                suffixIcon: Icon(Icons.search),

              ),
            ),
          )
        ],
      ),
    );
  }
}
