import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/models/clubinfo.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class clubDetailsScreen extends StatefulWidget {
  static const routeName = "/club_details";

  @override
  State<clubDetailsScreen> createState() => _clubDetailsScreenState();
}

class _clubDetailsScreenState extends State<clubDetailsScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    final item = ModalRoute.of(context)!.settings.arguments as Club;
    return SafeArea(
        child: Scaffold(
            appBar: const CustomAppBar(),
            endDrawer: NavigationDrawer(),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 310,
                    width: sz.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(item.imageUrl),
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.6),
                            BlendMode.darken,
                          )),
                    ),
                    child: Stack(children: [
                      Positioned(
                        top: 240,
                        left: 25,
                        child: Text(
                          item.title,
                          style: const TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 8,
                      top: 8,
                    ),
                    child: Row(
                      children: [
                        const Spacer(),
                        const Text(
                          "Notifications of this club",
                          style: TextStyle(
                            color: GlobalVariables.customGrey,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        Switch.adaptive(
                            value: value,
                            onChanged: ((value) => setState(() {
                                  this.value = value;
                                })))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 30,
                    ),
                    child: Text(
                      lorem(
                        paragraphs: 1,
                        words: 100,
                      ),
                      style: const TextStyle(fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  announcementsCard(sz: sz, item: item),
                  ExpansionTile(
                    title: const ExpansionTitle(
                      title: "Upcoming events",
                    ),
                    children: [
                      UpcomingEventsCard(item: item, sz: sz),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ExpansionTile(
                    title: const ExpansionTitle(
                      title: "Concluded Events",
                    ),
                    children: [UpcomingEventsCard(sz: sz, item: item)],
                  )
                ],
              ),
            )));
  }
}

class ExpansionTitle extends StatelessWidget {
  final String title;

  const ExpansionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: GlobalVariables.customGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class announcementsCard extends StatelessWidget {
  const announcementsCard({
    Key? key,
    required this.sz,
    required this.item,
  }) : super(key: key);

  final Size sz;
  final Club item;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(sz.width * 0.05),
      child: Container(
        width: 390,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Text(
                "Announcements",
                style: TextStyle(
                  color: GlobalVariables.customGrey,
                  fontSize: 26,
                ),
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: ((context, index) =>
                    announcementBuilder(item.announcements[index])))
          ],
        ),
      ),
    );
  }
}

Widget announcementBuilder(txt) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
    child: Column(
      children: [
        Text(
          txt,
          style:
              const TextStyle(color: GlobalVariables.customGrey, fontSize: 14),
          textAlign: TextAlign.justify,
          overflow: TextOverflow.clip,
        ),
        const Divider(),
      ],
    ),
  );
}

class UpcomingEventsCard extends StatelessWidget {
  const UpcomingEventsCard({
    required this.sz,
    required this.item,
  });

  final Size sz;
  final Club item;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(sz.width * 0.05),
      child: Container(
        width: 390,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: ((context, index) =>
                    upcomingEventsBuilder(item.upcomEvents[index].title)))
          ],
        ),
      ),
    );
  }
}

Widget upcomingEventsBuilder(txt) {
  return Padding(
    padding: const EdgeInsets.only(top: 25, left: 30, right: 30, bottom: 5),
    child: Column(
      children: [
        Text(
          txt,
          style:
              const TextStyle(color: GlobalVariables.customGrey, fontSize: 14),
          textAlign: TextAlign.justify,
          overflow: TextOverflow.clip,
        ),
        const Divider(),
      ],
    ),
  );
}
