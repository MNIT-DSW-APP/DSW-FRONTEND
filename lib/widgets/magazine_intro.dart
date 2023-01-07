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
    final currScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Container(
      padding: EdgeInsets.all(15),
      height: sz.height*0.3,
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
            margin: EdgeInsets.all(sz.height*.004),
            child:
            Text(
              "Magazine",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32*currScaleFactor,
              ),
              textAlign: TextAlign.left,
            ),
          ),


          SizedBox(
            height: 50,
          ),
          Container(
            height: sz.height*0.05,
            //margin:
            margin: new EdgeInsets.symmetric(horizontal: sz.height*0.075),
            child: TextField(

              textAlign: TextAlign.start,

              style: TextStyle( fontSize:14*currScaleFactor ),

              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: sz.height*.01,horizontal: sz.height*0.01),
                filled: true,
                fillColor: Color(0xffffffff),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
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