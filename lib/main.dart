import 'package:dswapp/screens/about_societies_screen.dart';
import 'package:dswapp/screens/admin_screen.dart';
import 'package:dswapp/screens/announcements_control_screen.dart';
import 'package:dswapp/screens/certifications_control_screen.dart';
import 'package:dswapp/screens/club_details_screen.dart';
import 'package:dswapp/screens/complaints_control_screen.dart';
import 'package:dswapp/screens/events_control_screen.dart';
import 'package:dswapp/screens/events_screen.dart';
import 'package:dswapp/screens/host_event_screen.dart';
import 'package:dswapp/screens/landing_screen.dart';
import 'package:dswapp/screens/login_screen.dart';
import 'package:dswapp/screens/lost_and_found_screen.dart';
import 'package:dswapp/screens/panels_screen.dart';
import 'package:dswapp/screens/points_control_screen.dart';
import 'package:dswapp/widgets/magzine_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DSW App',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(49, 56, 66, 1),
        accentColor: Color.fromRGBO(246, 201, 14, 1),
        dividerTheme: const DividerThemeData(
          color: Color.fromRGBO(167, 167, 167, 1),
          space: 35,
          indent: 40,
          endIndent: 50,
        ),
      ),
      home: LandingScreen(),
      routes: {
        PanelScreen.routeName: (context) => PanelScreen(),
        LostAndFoundScreen.routeName: (context) => LostAndFoundScreen(),
        LogInScreen.routeName: (context) => LogInScreen(),
        AboutSocieties.routeName: (context) => AboutSocieties(),
        clubDetailsScreen.routeName: ((context) => clubDetailsScreen()),
        EventsScreen.routeName: (context) => EventsScreen(),
        EventsControlScreen.routeName: ((context) => EventsControlScreen()),
        ComplaintsControlScreen.routeName: (context) =>
            ComplaintsControlScreen(),
        CertificationsControlScreen.routeName: (context) =>
            CertificationsControlScreen(),
        PointsControlScreen.routeName: ((context) => PointsControlScreen()),
        AnnouncementsControlScreen.routeName: (context) =>
            AnnouncementsControlScreen(),
        HostEventScreen.routeName: (context) => HostEventScreen(),
        AdminScreen.routeName: (context) => AdminScreen(),
      },
    );
  }
}
