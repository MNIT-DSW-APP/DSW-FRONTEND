import 'package:dswapp/screens/announcements_control_screen.dart';
import 'package:dswapp/screens/certifications_control_screen.dart';
import 'package:dswapp/screens/complaints_control_screen.dart';
import 'package:dswapp/screens/events_control_screen.dart';
import 'package:dswapp/screens/points_control_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TitleOptions {
  Events,
  Points,
  Complaints,
  Certifications,
  Announcements,
}

class AdminControl {
  final List<PostControl> adminControlList = [
    PostControl(
      title: TitleOptions.Events,
      icon: Icons.event,
      routeName: EventsControlScreen.routeName,
    ),
    PostControl(
      title: TitleOptions.Points,
      icon: Icons.square,
      routeName: PointsControlScreen.routeName,
    ),
    PostControl(
      title: TitleOptions.Complaints,
      icon: Icons.error,
      routeName: ComplaintsControlScreen.routeName,
    ),
    PostControl(
      title: TitleOptions.Certifications,
      icon: Icons.border_all_rounded,
      routeName: CertificationsControlScreen.routeName,
    ),
    PostControl(
      title: TitleOptions.Announcements,
      icon: Icons.announcement_outlined,
      routeName: AnnouncementsControlScreen.routeName,
    ),
  ];
}

class CoordinatorControl {
  final List<PostControl> coordinatorControlList = [
    PostControl(
      title: TitleOptions.Events,
      icon: Icons.event,
      routeName: EventsControlScreen.routeName,
    ),
    PostControl(
      title: TitleOptions.Certifications,
      icon: Icons.border_all_rounded,
      routeName: '/',
    ),
    PostControl(
      title: TitleOptions.Announcements,
      icon: Icons.announcement_outlined,
      routeName: '/',
    ),
  ];
}

class PostControl {
  final TitleOptions title;
  final IconData icon;
  final String routeName;
  PostControl({
    required this.title,
    required this.icon,
    required this.routeName,
  });
}
