// ignore_for_file: prefer_const_constructors

import 'package:dswapp/models/faculty_about_dsw.dart';
import 'package:dswapp/widgets/aboutdsw_card.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/faculty_profile_card.dart';
import 'package:dswapp/widgets/footer.dart';
import 'package:dswapp/widgets/intro.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:dswapp/widgets/tasks_card.dart';
import 'package:flutter/material.dart';
import '../constants/global_variables.dart';

class AboutDSWScreen extends StatelessWidget {
  const AboutDSWScreen({Key? key}) : super(key: key);

  static const routeName = '/about_dsw_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        endDrawer: NavigationDrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Intro(),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: GlobalVariables.customGrey),
                ),
              ),
              Divider(),
              RichText(
                text: TextSpan(
                  text: "Student ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  ),
                  children: const [
                    TextSpan(
                        text: "Welfare",
                        style: TextStyle(
                          color: GlobalVariables.customYellow,
                        ))
                  ],
                ),
              ),
              AboutDSWCArd(),
              Divider(),
              TasksCard(),
              Divider(),
              Container(
                height: 50,
                  child: RichText(
                    text: TextSpan(
                      text: "DSW ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                      ),
                      children: const [
                        TextSpan(
                            text: "Committee",
                            style: TextStyle(
                              color: GlobalVariables.customYellow,
                            ))
                      ],
                    ),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: facultyList.map((person){
                    return FacultyCard(person: person);
                  }).toList(),
                ),
              ),
              SizedBox(
                width: 110,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
