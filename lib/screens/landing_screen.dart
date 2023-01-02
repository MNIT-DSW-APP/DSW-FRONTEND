import 'package:dswapp/widgets/aboutdsw_card.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/footer.dart';
import 'package:dswapp/widgets/intro.dart';
import 'package:dswapp/widgets/upcoming_events_slider.dart';
import 'package:dswapp/widgets/magzine_card.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:dswapp/widgets/tasks_card.dart';
import 'package:flutter/material.dart';
import '../constants/global_variables.dart';
import '../widgets/upcoming_events_slider.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
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
                child: const DecoratedBox(
                  decoration: BoxDecoration(color: GlobalVariables.customGrey),
                ),
              ),
              const UpcomingEventsSlider(),
              MagzineCard(),
              const Divider(),
              RichText(
                text: const TextSpan(
                  text: "Student ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  ),
                  children: [
                    TextSpan(
                        text: "Welfare",
                        style: TextStyle(
                          color: GlobalVariables.customYellow,
                        ))
                  ],
                ),
              ),
              AboutDSWCArd(),
              const Divider(),
              TasksCard(),
              const SizedBox(
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
