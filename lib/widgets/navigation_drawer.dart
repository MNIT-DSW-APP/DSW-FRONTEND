import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/screens/about_dsw_screen.dart';
import 'package:dswapp/screens/about_societies_screen.dart';
import 'package:dswapp/screens/events_screen.dart';
import 'package:dswapp/screens/lost_and_found_screen.dart';
import 'package:dswapp/screens/magazine_screen.dart';
import 'package:dswapp/screens/notifications_screen.dart';
import 'package:dswapp/screens/panels_screen.dart';
import 'package:dswapp/screens/user/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:dswapp/screens/campus_screen.dart';
import 'package:dswapp/screens/question_answer_screen.dart';

class NavigationDrawer extends StatelessWidget {
  final List<List> drawerItems = [
    ["Home", '/'],
    ["About DSW", AboutDSWScreen.routeName],
    ["Societies", AboutSocieties.routeName],
    ["Events", EventsScreen.routeName],
    ["Campus", CampusScreen.routeName],
    ["Magazine", MagazineScreen.routeName],
    ["Lost & Found", LostAndFoundScreen.routeName],
    ["FAQs", QuestionsScreen.routeName],
    ["Notifications", NotificationsScreen.routeName],
    ["Login", PanelScreen.routeName],
    ["User Profile", UserProfileScreen.routeName],
  ];
  Widget buildListTile(String tileTitle, VoidCallback tapHandler) {
    return ListTile(
      title: Column(
        children: [
          TextButton(
            onPressed: tapHandler,
            child: Text(
              tileTitle,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          color: GlobalVariables.navBarCol,
          child: SingleChildScrollView(
              child: Column(children: [
            Container(
              color: GlobalVariables.navBarCol,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () => {Navigator.of(context).pop()},
                    child: const Icon(Icons.close),
                  )
                ],
              ),
            ),
            DrawerList(context),
          ])),
        ),
      ),
    );
  }

  Widget DrawerList(BuildContext ctx) {
    return Column(
        children: drawerItems
            .map((item) => buildListTile(item[0], () {
                  Navigator.of(ctx).popAndPushNamed(item[1].toString());
                }))
            .toList());
  }
}
