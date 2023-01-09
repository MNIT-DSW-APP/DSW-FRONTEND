// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class MagazineScroll extends StatelessWidget {
  MagazineScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currScaleFactor = MediaQuery.of(context).textScaleFactor;
    Size sz = MediaQuery.of(context).size;
    return Container(
      margin: new EdgeInsets.symmetric(horizontal: sz.height*0.01),
      padding: EdgeInsets.all(sz.height*0.02),
      height: sz.height*0.22,
      width: sz.width*0.95,
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
            width: sz.width*0.6,
            //alignment: Alignment(-0.9,0),
            child: Text(
              "AluMNITimes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12*currScaleFactor,
                fontWeight: FontWeight.w700,
                wordSpacing: 1.8,
                letterSpacing: 1.5,
                height: 2.45,


              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: sz.height*0.01,
          ),
          Container(
            width: sz.width*0.6,
            alignment: Alignment(-0.9,0),
            child: Text(

              "Alumni News:Latest and Breaking News on alumni.Explore alumni profile of Times of India for photos ,videos and latest news of alumni",
              style: TextStyle(
                color: Colors.black,
                fontSize: 7*currScaleFactor,
                fontWeight: FontWeight.w300,
                wordSpacing: 1.8,
                letterSpacing: 1.5,
                height: 1.5,



              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: sz.height*0.02,
          ),
          Container(
            height: sz.height*0.04,
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
                style: TextStyle(fontSize:8*currScaleFactor,color: Colors.black,fontWeight:FontWeight.w500),
              ),
            ),
          )

        ],
      ),
    );
  }
}
