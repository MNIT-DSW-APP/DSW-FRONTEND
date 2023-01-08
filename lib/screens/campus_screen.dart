import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../constants/global_variables.dart';
import '../widgets/aboutcampus_card.dart';

class CampusScreen extends StatefulWidget {
  const CampusScreen({Key? key}) : super(key: key);
  static const routeName = '/campus';

  @override
  State<CampusScreen> createState() => _CampusScreenState();
}

class _CampusScreenState extends State<CampusScreen> {
  final List<String> campusImages = [
    'lib/assets/images/prabha_cl.jpg',
    'lib/assets/images/vltc1_cl.jpg',
    'lib/assets/images/ganga_cl.jpg',
    'lib/assets/images/miic_cl.jpg',
    'lib/assets/images/canteen_cl.jpg',
    'lib/assets/images/apartments_cl.jpg',
  ];

  List<Widget> generateImagesTiles() {
    return campusImages
        .map((element) => ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            )))
        .toList();
  }

  final videoURL =
      "https://www.youtube.com/watch?v=57Y_92nGfC8&ab_channel=WebmasterMNIT";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        hideControls: false,
        controlsVisibleAtStart: false,
        autoPlay: false,
        mute: false,
        isLive: false,
        hideThumbnail: false,
        disableDragSeek: false,
        enableCaption: false,
        loop: false,
        useHybridComposition: false,
        forceHD: false,
        showLiveFullscreenButton: false,
      ),
    );
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        endDrawer: NavigationDrawer(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Campus ",
                            style: TextStyle(
                              color: GlobalVariables.customGrey,
                              fontSize: 37,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Life",
                            style: TextStyle(
                              color: GlobalVariables.customYellow,
                              fontSize: 37,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Stack(
                  children: [
                    CarouselSlider(
                        items: generateImagesTiles(),
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 2),
                        )),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Divider(),
            ),
            const AboutCampusCard(),
            const Padding(
              padding: EdgeInsets.only(top: 0.0),
              child: Divider(),
            ),
            const Text(
              "Made Life Easy",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w100),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                "FOR STUDENTS",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      splashColor: Colors.amberAccent,
                      child: Ink.image(
                        image: const AssetImage(
                            "lib/assets/images/library_screen.jpg"),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                        child: const Center(
                          child: Text(
                            "Library",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.amberAccent,
                        child: Ink.image(
                          image: const AssetImage(
                              "lib/assets/images/canteen_screen.jpg"),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          child: const Center(
                            child: Text(
                              "Canteen",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.amberAccent,
                        child: Ink.image(
                          image: const AssetImage(
                              "lib/assets/images/guest_house_screen.jpg"),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          child: const Center(
                            child: Text(
                              "Guest House",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {},
                        splashColor: Colors.amberAccent,
                        child: Ink.image(
                          image: const AssetImage(
                              "lib/assets/images/bank_screen.jpg"),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          child: const Center(
                            child: Text(
                              "Bank",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.amberAccent,
                          child: Ink.image(
                            image: const AssetImage(
                                "lib/assets/images/digital_infrastructure_screen.jpg"),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                            child: const Center(
                              child: Text(
                                "Digital \n Infrastructure",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.amberAccent,
                          child: Ink.image(
                            image: const AssetImage(
                                "lib/assets/images/medical_facilities_screen.jpg"),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 25, left: 20.0),
                              child: Text(
                                "Medical Facilities",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {},
                        splashColor: Colors.amberAccent,
                        child: Ink.image(
                          image: const AssetImage(
                              "lib/assets/images/post_office_screen.png"),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          child: const Center(
                            child: Text(
                              "Post-Office",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.amberAccent,
                          child: Ink.image(
                            image: const AssetImage(
                                "lib/assets/images/shopping_complex_screen.jpg"),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                            child: const Center(
                              child: Text(
                                "Shopping \n Complex",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.amberAccent,
                          child: Ink.image(
                            image: const AssetImage(
                                "lib/assets/images/sports_screen.jpg"),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 40, left: 20.0),
                              child: Text(
                                "Sports",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Divider(),
            ),
            const Text(
              "From Campus",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w100),
            ),
            const Text(
              "LATEST CAMPUS TOUR",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    bottomActions: [
                      const PlaybackSpeedButton(),
                      CurrentPosition(),
                      ProgressBar(
                        isExpanded: true,
                      ),
                    ],
                  ),
                ]),
          ]),
        ),
      ),
    );
  }
}
