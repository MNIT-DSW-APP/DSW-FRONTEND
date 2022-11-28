// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dswapp/constants.dart';
import 'package:dswapp/screens/landing_screen.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/lost_card.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../models/lost_item.dart';

class LostAndFoundScreen extends StatelessWidget {
  static const routeName = '/lost_and_found';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        endDrawer: NavigationDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 0, 30),
                    child: Text(
                      "Lost & Found",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add Request",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: customYellow, padding: EdgeInsets.all(15)),
                  ),
                ],
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return LostCard(item: itemList[index]);
                }),
                itemCount: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
