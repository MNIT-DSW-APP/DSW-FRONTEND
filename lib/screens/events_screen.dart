import 'package:dswapp/models/event.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/event_card.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

import '../constants/global_variables.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);
  static const routeName = "/events";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: NavigationDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(children: [
          Row(
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "MNITJ ",
                      style: TextStyle(
                        color: GlobalVariables.customGrey,
                        fontSize: 37,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "Events",
                      style: TextStyle(
                        color: GlobalVariables.customYellow,
                        fontSize: 37,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.search,
                color: GlobalVariables.customYellow,
                size: 35,
              ),
              const Icon(
                Icons.filter_alt,
                color: GlobalVariables.customYellow,
                size: 35,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return EventCard(item: EventsList[index]);
            }),
            itemCount: EventsList.length,
          ),
        ]),
      ),
    ));
  }
}
