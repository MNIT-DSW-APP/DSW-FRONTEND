import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/screens/magazine_screen.dart';
import 'package:flutter/material.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class MagzineCardCrescendo extends StatelessWidget {
  final String description =
      "As 2021 comes to an end, the Crescendo is here to bid adieu to the year with another editi on full of business insights. We bring you the December edition of MNIT’s official Eco-....";
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    Size sz = MediaQuery.of(context).size;
    return Card(
      margin: EdgeInsets.all(width*0.05),
      child: Container(
        width:220 ,
        height:365,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

                height: 250,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('lib/assets/images/magzine.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 280,
              left: 10,
              right:10,
              child: Text(
                "The Crescendo it the official Eco-Business and Entrepreneurial news magazine of MNIT Jaipur",
                style: TextStyle(
                  color: GlobalVariables.customGrey,
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Positioned(
                top: 310,
                left: 10,
                child:
                InkWell(
                  child:  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          width: 1.0,
                          color: Colors.orange,
                        ),
                        primary: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 9)),
                    onPressed: () {

                    },
                    child: Text(
                      "Read Here",
                      style: TextStyle(fontSize: 10,color: Colors.orange,fontWeight:FontWeight.w400),
                    ),
                  ),
                )
            ),


          ],
        ),
      ),
    );
  }
}
