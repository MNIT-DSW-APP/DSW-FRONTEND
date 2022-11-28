import 'package:dswapp/constants.dart';
import 'package:dswapp/screens/about_societies_screen.dart';
import 'package:dswapp/screens/events_screen.dart';
import 'package:dswapp/screens/lost_and_found_screen.dart';
import 'package:dswapp/screens/panels_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigationDrawer extends StatelessWidget {
  final List<List> drawerItems = [
    ["Home", '/'],
    ["About DSW", '/'],
    ["Societies", AboutSocieties.routeName],
    ["Events", EventsScreen.routeName],
    ["Lost & Found", LostAndFoundScreen.routeName],
    ["FAQs", "/"],
    ["Notifications", "/"],
    ["Login", PanelScreen.routeName],
  ];
  Widget buildListTile(String tileTitle, VoidCallback tapHandler) {
    return ListTile(
      // title: Container(
      title: Column(
        children: [
          FlatButton(
            child: Text(
              tileTitle,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            onPressed: tapHandler,
          ),
          Divider(),
        ],
      ),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          color: const Color.fromRGBO(49, 56, 66, 0.97),
          child: SingleChildScrollView(
              child: Container(
            child: Column(children: [
              Container(
                color: const Color.fromRGBO(49, 56, 66, 0.97),
                child: Row(
                  children: [
                    FlatButton(
                      onPressed: () => {Navigator.of(context).pop()},
                      child: Icon(Icons.close),
                    )
                  ],
                ),
              ),
              DrawerList(context),
            ]),
          )),
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
