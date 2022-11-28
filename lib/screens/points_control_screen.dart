import 'package:dswapp/constants.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/custom_black_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PointsControlScreen extends StatelessWidget {
  const PointsControlScreen({Key? key}) : super(key: key);
  static const routeName = '/points_control';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Give points to :",
              style: TextStyle(
                color: customGrey,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomBlackButton(
              title: "Student",
              icon: FontAwesomeIcons.person,
              routename: "/",
            ),
            const Text(
              "OR",
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
            CustomBlackButton(
              title: "Club",
              icon: FontAwesomeIcons.userGroup,
              routename: '/',
            )
          ]),
    ));
  }
}
