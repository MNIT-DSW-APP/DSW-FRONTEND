import 'package:dswapp/screens/admin/complaint_detail_screen.dart';
import 'package:dswapp/screens/admin/complaint_screen.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/custom_black_button.dart';
import 'package:flutter/material.dart';

class ComplaintsControlScreen extends StatelessWidget {
  const ComplaintsControlScreen({Key? key}) : super(key: key);
  static const routeName = '/compalaints_control';

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
              title: "Unsoved Complaints",
              icon: Icons.pending,
              routename: ComplaintsScreen.routeName,
            ),
            Text(
              "OR",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
            CustomBlackButton(
              title: "Solved complaints",
              icon: Icons.done,
              routename: ComplaintsScreen.routeName,
            )
          ]),
    ));
  }
}
