import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/screens/login_screen.dart';
import 'package:flutter/material.dart';

class PanelButton extends StatelessWidget {
  final String title;

  const PanelButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Container(
      width: sz.width - 100,
      height: 45,
      margin: const EdgeInsets.only(bottom: 25),
      child: ElevatedButton(
        onPressed: () =>
            Navigator.of(context).popAndPushNamed(LogInScreen.routeName),
        style: ElevatedButton.styleFrom(primary: GlobalVariables.customYellow),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 50,
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
