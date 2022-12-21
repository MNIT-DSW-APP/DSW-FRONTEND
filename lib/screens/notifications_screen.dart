import 'package:dswapp/models/notification.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});
  static const routeName = '/notifications';

  @override
  _NotificationsScreenState createState() {
    return _NotificationsScreenState();
  }
}

class _NotificationsScreenState extends State<NotificationsScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        endDrawer: NavigationDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: notifList.length,
            itemBuilder: (BuildContext context, int index) {
              return getNotificationCard(notifList[index]);
            },
          ),
        ),
      ),
    );
  }
  Widget getNotificationCard(Notif notif) {
    return Card(
      child: ExpansionTile(
        tilePadding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        leading: Container(
          decoration: BoxDecoration(
              color: Colors.yellow,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.yellow,
              width: 2
            ),
            boxShadow: [BoxShadow(blurRadius: 2, color: Colors.black, spreadRadius: .5)]
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(notif.imgURL),
          ),
        ),
        title: Text(
          notif.title,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        trailing: Text(notif.time),
        children: <Widget>[
          ListTile(
            title: Text(
              notif.description,
              style: const TextStyle(fontWeight: FontWeight.w200),
            ),
          )
        ],
      ),
    );
  }
}