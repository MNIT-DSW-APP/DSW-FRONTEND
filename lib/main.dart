import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/models/user.dart';
import 'package:dswapp/providers/complaint_providers.dart';
import 'package:dswapp/screens/about_dsw_screen.dart';
import 'package:dswapp/screens/about_societies_screen.dart';
import 'package:dswapp/screens/admin/certifications_screen.dart';
import 'package:dswapp/screens/admin/complaint_detail_screen.dart';
import 'package:dswapp/screens/admin/complaint_screen.dart';
import 'package:dswapp/screens/admin/give_club_points_screen.dart';
import 'package:dswapp/screens/admin/give_student_points_screen.dart';
import 'package:dswapp/screens/admin/resolve_complaint_screen.dart';
import 'package:dswapp/screens/admin_screen.dart';
import 'package:dswapp/screens/announcements_control_screen.dart';
import 'package:dswapp/screens/campus_screen.dart';
import 'package:dswapp/screens/certifications_control_screen.dart';
import 'package:dswapp/screens/club_details_screen.dart';
import 'package:dswapp/screens/complaints_control_screen.dart';
import 'package:dswapp/screens/events_control_screen.dart';
import 'package:dswapp/screens/events_screen.dart';
import 'package:dswapp/screens/host_event_screen.dart';
import 'package:dswapp/screens/login_screen.dart';
import 'package:dswapp/screens/lost_and_found_screen.dart';
import 'package:dswapp/screens/magazine_screen.dart';
import 'package:dswapp/screens/notifications_screen.dart';
import 'package:dswapp/screens/panels_screen.dart';
import 'package:dswapp/screens/points_control_screen.dart';
import 'package:dswapp/screens/question_answer_screen.dart';
import 'package:dswapp/screens/signup_screen.dart';
import 'package:dswapp/screens/user/register_complaint_screen.dart';
import 'package:dswapp/screens/user/register_lost_and_found.dart';
import 'package:dswapp/screens/user/certificates_screen.dart';
import 'package:dswapp/screens/user/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ComplaintProvider>(
          create: (_) => ComplaintProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
            create: (context) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DSW App',
        theme: ThemeData(
            primaryColor: GlobalVariables.customGrey,
            fontFamily: 'Lato',
            dividerTheme: const DividerThemeData(
              color: Color.fromRGBO(167, 167, 167, 1),
              space: 35,
              indent: 40,
              endIndent: 50,
            ),
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: GlobalVariables.customYellow),
            textTheme: const TextTheme(
                bodyText1: TextStyle(
              color: GlobalVariables.customGrey,
              fontSize: 16,
              fontWeight: FontWeight.w200,
            ))),
        home: SignUpScreen(),
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
          NotificationsScreen.routeName: ((context) => NotificationsScreen()),
          QuestionsScreen.routeName: ((context) => QuestionsScreen()),
          ComplaintsScreen.routeName: (context) => ComplaintsScreen(),
          ComplaintDetailScreen.routeName: (context) => ComplaintDetailScreen(),
          ResolveComplaintScreen.routeName: (context) =>
              ResolveComplaintScreen(),
          CertificatesScreen.routeName: (context) => CertificatesScreen(),
          CampusScreen.routeName: (context) => CampusScreen(),
          AboutDSWScreen.routeName: (context) => AboutDSWScreen(),
          MagazineScreen.routeName: ((context) => MagazineScreen()),
          ComplaintRegisterScreen.routeName: ((context) =>
              ComplaintRegisterScreen()),
          LostAndFoundRegisterScreen.routeName: ((context) =>
              LostAndFoundRegisterScreen()),
          GiveClubPointsScreen.routeName: (context) => GiveClubPointsScreen(),
          GiveStudentPointsScreen.routeName: (context) =>
              GiveStudentPointsScreen(),
          CertificationsScreen.routeName: (context) => CertificationsScreen(),
          UserProfileScreen.routeName: (context) => UserProfileScreen(),
          ComplaintRegisterScreen.routeName: (context) =>
              ComplaintRegisterScreen(),
          LostAndFoundRegisterScreen.routeName: (context) =>
              LostAndFoundRegisterScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
        },
      ),
    );
  }
}
