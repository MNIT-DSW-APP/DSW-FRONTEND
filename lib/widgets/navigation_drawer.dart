import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/screens/about_societies_screen.dart';
import 'package:dswapp/screens/events_screen.dart';
import 'package:dswapp/screens/lost_and_found_screen.dart';
import 'package:dswapp/screens/panels_screen.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  final List<List> drawerItems = [
    ["Home", '/'],
    ["About DSW", '/'],
    ["Societies", AboutSocieties.routeName],
    ["Events", EventsScreen.routeName],
    ["Campus", '/'],
    ["Lost & Found", LostAndFoundScreen.routeName],
    ["FAQs", "/"],
    ["Notifications", "/"],
    ["Login", PanelScreen.routeName],
  ];
  Widget buildListTile(String tileTitle, VoidCallback tapHandler) {
    return ListTile(
      title: Column(
        children: [
          FlatButton(
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
                  FlatButton(
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
