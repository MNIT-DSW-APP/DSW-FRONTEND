// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:collection';

import 'package:dswapp/constants.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:dswapp/widgets/panel_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PanelScreen extends StatelessWidget {
  const PanelScreen({Key? key}) : super(key: key);

  static const routeName = '/panel_screen';

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        endDrawer: NavigationDrawer(),
        body: Container(
          height: sz.height,
          width: sz.width,
          margin:
              const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              const BoxShadow(
                blurRadius: 3.0,
                color: Color.fromARGB(172, 158, 158, 158),
              ),
            ],
          ),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 35,
                  ),
                  child: Text(
                    "Log into your account",
                    style: TextStyle(
                      color: customGrey,
                      fontSize: 24,
                    ),
                  ),
                ),
                const PanelButton(title: "Admin"),
                const PanelButton(title: "General Secretary"),
                const PanelButton(title: "Coordinator"),
                const PanelButton(title: "Student"),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("lib/assets/images/login_panel.png"),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ]),
        ),
      ),
    );
  }
}
