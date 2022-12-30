import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/lost_card.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import '../constants/global_variables.dart';
import '../models/lost_item.dart';

class LostAndFoundScreen extends StatelessWidget {
  static const routeName = '/lost_and_found';

  const LostAndFoundScreen({Key? key}) : super(key: key);
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
                    style: ElevatedButton.styleFrom(
                        backgroundColor: GlobalVariables.customYellow,
                        padding: const EdgeInsets.all(15)),
                    child: const Text(
                      "Add Request",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
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
