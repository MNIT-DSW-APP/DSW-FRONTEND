import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/screens/admin/give_club_points_screen.dart';
import 'package:dswapp/screens/admin/give_student_points_screen.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/custom_black_button.dart';
import 'package:flutter/material.dart';
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
          children: const [
            Text(
              "Give points to :",
              style: TextStyle(
                color: GlobalVariables.customGrey,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            CustomBlackButton(
              title: "Student",
              icon: FontAwesomeIcons.person,
              routename: GiveStudentPointsScreen.routeName,
            ),
            Text(
              "OR",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
            CustomBlackButton(
              title: "Club",
              icon: FontAwesomeIcons.userGroup,
              routename: GiveClubPointsScreen.routeName,
            )
          ]),
    ));
  }
}
