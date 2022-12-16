import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/models/clubinfo.dart';
import 'package:dswapp/screens/club_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClubCard extends StatelessWidget {
  final Club item;

  const ClubCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Card(
      margin: EdgeInsets.all(sz.width * 0.02),
      child: InkWell(
        onTap: (() {
          Navigator.of(context).pushNamed(
            clubDetailsScreen.routeName,
            arguments: item,
          );
        }),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(5, 5),
                  blurRadius: 10,
                ),
              ],
              image: DecorationImage(
                  image: AssetImage(item.imageUrl),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6),
                    BlendMode.darken,
                  ))),
          child: Stack(children: [
            Positioned(
              top: 152,
              left: 16,
              child: Text(
                item.title,
                style: const TextStyle(
                  color: GlobalVariables.customYellow,
                  fontSize: 23,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
