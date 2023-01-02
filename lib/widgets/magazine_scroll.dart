// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/global_variables.dart';

class MagazineScroll extends StatelessWidget {
  MagazineScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Container(
      margin: new EdgeInsets.symmetric(horizontal: 50.0),
      padding: EdgeInsets.all(15),
      height: sz.height - 350.0,
      width: sz.width,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.all(Radius.circular(15.0)),


        image: DecorationImage(

          image: AssetImage("lib/assets/images/magazine_scroll.png"),
            fit:BoxFit.fill

        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 600,
            //alignment: Alignment(-0.9,0),
            child: Text(
              "AluMNITimes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.w700,
                wordSpacing: 1.8,
                letterSpacing: 1.5,
                height: 2.45,


              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 600,
            alignment: Alignment(-0.9,0),
            child: Text(

              "Alumni News:Latest and Breaking News on alumni.Explore alumni profile of Times of India for photos ,videos and latest news of alumni",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                wordSpacing: 1.8,
                letterSpacing: 1.5,
                height: 1.5,



              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(


              ),

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(shape: StadiumBorder(),
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 9)),
              onPressed: () {

              },
              child: Text(
                "Download",
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.w500),
              ),
            ),
          )

        ],
      ),
    );
  }
}
