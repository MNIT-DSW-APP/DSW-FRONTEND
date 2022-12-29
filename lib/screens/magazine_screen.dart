// ignore_for_file: prefer_const_constructors

import 'package:dswapp/widgets/aboutdsw_card.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/footer.dart';
import 'package:dswapp/widgets/intro.dart';
import 'package:dswapp/widgets/magazine_Saanidhya.dart';
import 'package:dswapp/widgets/magazine_intro.dart';
import 'package:dswapp/widgets/upcoming_events_slider.dart';
import 'package:dswapp/widgets/magzine_card.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:dswapp/widgets/tasks_card.dart';
import 'package:flutter/material.dart';
import '../constants/global_variables.dart';
import '../widgets/upcoming_events_slider.dart';

class MagazineScreen extends StatelessWidget {
  const MagazineScreen({Key? key}) : super(key: key);
  static const routeName = '/magazine_screen';

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

              MagazineIntro(),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Sanidhya Magazine ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,


                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children:[
                      MagzineCardSanidhya(),
                      MagzineCardSanidhya(),
                      MagzineCardSanidhya(),

                    ]
                ),
              ),
              Divider(),
              //const Spacer(),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "The Crescendo ",
                      style: TextStyle(
                        color: GlobalVariables.customGrey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children:[
                      MagzineCardSanidhya(),
                      MagzineCardSanidhya(),
                      MagzineCardSanidhya(),

                    ]
                ),
              ),
              // RichText(
              //   text: TextSpan(
              //     text: "Student ",
              //     style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 32,
              //     ),
              //     children: const [
              //       TextSpan(
              //           text: "Welfare",
              //           style: TextStyle(
              //             color: GlobalVariables.customYellow,
              //           ))
              //     ],
              //   ),
              // ),
              // AboutDSWCArd(),
              // Divider(),
              // TasksCard(),

            ],
          ),
        ),
      ),
    );
  }
}
