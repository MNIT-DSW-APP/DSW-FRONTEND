import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/models/clubinfo.dart';
import 'package:dswapp/widgets/club_card.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class AboutSocieties extends StatelessWidget {
  const AboutSocieties({Key? key}) : super(key: key);
  static const routeName = '/about_societies';

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        endDrawer: NavigationDrawer(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "About ",
                          style: TextStyle(
                            color: GlobalVariables.customGrey,
                            fontSize: 37,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Societies",
                          style: TextStyle(
                            color: GlobalVariables.customYellow,
                            fontSize: 37,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.search,
                    color: GlobalVariables.customYellow,
                    size: 35,
                  ),
                ],
              ),
            ),

            Container(
              height: 250,
              width: sz.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/the_mavericks.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                lorem(
                  paragraphs: 1,
                  words: 100,
                ),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return ClubCard(item: clubList[index]);
              }),
              itemCount: clubList.length,
            ),
          ]),
        ),
      ),
    );
  }
}
