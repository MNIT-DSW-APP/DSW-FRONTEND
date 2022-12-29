import 'package:dswapp/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class MagzineCardSanidhya extends StatelessWidget {
  final String description =
      "As 2021 comes to an end, the Crescendo is here to bid adieu to the year with another editi on full of business insights. We bring you the December edition of MNIT’s official Eco-....";
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Card(
      margin: EdgeInsets.all(width * 0.05),
      child: Container(
          width: 250.0,
          height: 300.0,
          decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              image:  DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('lib/assets/images/magzine.png')
              )
          )),
    );
  }
}
