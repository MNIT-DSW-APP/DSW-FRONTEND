import 'package:dswapp/constants.dart';
import 'package:dswapp/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PanelButton extends StatelessWidget {
  final String title;

  const PanelButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Container(
      width: sz.width - 100,
      height: 45,
      margin: EdgeInsets.only(bottom: 25),
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).pushNamed(LogInScreen.routeName),
        style: ElevatedButton.styleFrom(primary: customYellow),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 50,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
