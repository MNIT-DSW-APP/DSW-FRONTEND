import 'package:dswapp/constants.dart';
import 'package:dswapp/screens/host_event_screen.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/custom_black_button.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EventsControlScreen extends StatelessWidget {
  const EventsControlScreen({Key? key}) : super(key: key);
  static const routeName = '/events_control';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: NavigationDrawer(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CustomBlackButton(
              title: "host new event",
              icon: Icons.event,
              routename: HostEventScreen.routeName,
            ),
            Text(
              "OR",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
            CustomBlackButton(
              title: "Edit hosted event",
              icon: Icons.edit,
              routename: '/',
            )
          ]),
    ));
  }
}
