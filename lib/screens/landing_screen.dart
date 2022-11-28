// ignore_for_file: prefer_const_constructors

import 'package:dswapp/widgets/aboutdsw_card.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/footer.dart';
import 'package:dswapp/widgets/intro.dart';
import 'package:dswapp/widgets/upcoming_events_slider.dart';
import 'package:dswapp/widgets/magzine_card.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:dswapp/widgets/tasks_card.dart';
import 'package:flutter/material.dart';
import '../widgets/upcoming_events_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({Key? key}) : super(key: key);

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
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(49, 56, 66, 1)),
                ),
              ),
              UpcomingEventsSlider(),
              MagzineCard(),
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
                          color: Color.fromRGBO(246, 201, 14, 1),
                        ))
                  ],
                ),
              ),
              AboutDSWCArd(),
              Divider(),
              TasksCard(),
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
