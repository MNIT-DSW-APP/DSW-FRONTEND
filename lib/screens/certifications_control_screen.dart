import 'package:dswapp/screens/admin/certifications_screen.dart';
import 'package:dswapp/screens/user/certificates_screen.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/custom_black_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CertificationsControlScreen extends StatelessWidget {
  const CertificationsControlScreen({Key? key}) : super(key: key);
  static const routeName = '/certifications_control';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CustomBlackButton(
              title: "Certify",
              icon: FontAwesomeIcons.award,
              routename: CertificationsScreen.routeName,
            ),
            Text(
              "OR",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
            CustomBlackButton(
              title: "View previous certifications",
              icon: FontAwesomeIcons.certificate,
              routename: CertificatesScreen.routeName,
            )
          ]),
    ));
  }
}
