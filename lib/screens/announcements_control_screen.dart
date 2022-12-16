import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AnnouncementsControlScreen extends StatelessWidget {
  const AnnouncementsControlScreen({Key? key}) : super(key: key);
  static const routeName = '/announcements_control';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(),
      body: Column(children: []),
    ));
  }
}
