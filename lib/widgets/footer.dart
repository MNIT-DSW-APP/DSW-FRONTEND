import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  final Color yel = GlobalVariables.customYellow;

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    final currScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Container(
      decoration: const BoxDecoration(
        color: GlobalVariables.customGrey,
      ),
      height: sz.height,
      width: sz.width,
      child: Column(
        children: [
          SizedBox(
            height: sz.height * 0.075,
          ),
          SizedBox(
            height: sz.height * 0.12,
            width: sz.width * 0.23,
            child: Image.asset("lib/assets/images/Mnit_logo.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Text(
              "Malaviya National Institute of Technology Jaipur",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15 * currScaleFactor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "Jawahar Lal Nehru Marg,",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15 * currScaleFactor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              "Jaipur-302017 (Rajasthan) INDIA",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15 * currScaleFactor,
              ),
            ),
          ),
          Text(
            "webmaster[at]mnit.ac.in",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15 * currScaleFactor,
            ),
          ),
          SizedBox(height: sz.height * 0.037),
          Text(
            "Have any query?",
            style: TextStyle(color: yel, fontSize: 20 * currScaleFactor),
            textAlign: TextAlign.left,
          ),
          const SearchBar(),
          SizedBox(
            height: sz.height * 0.025,
          ),
          Divider(
            color: yel,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SocialMediaIcon(
                  yel: yel,
                  iconData: Icons.facebook_outlined,
                ),
                SocialMediaIcon(
                  yel: yel,
                  iconData: FontAwesomeIcons.linkedin,
                ),
                SocialMediaIcon(
                  yel: yel,
                  iconData: FontAwesomeIcons.twitter,
                ),
                SocialMediaIcon(
                  yel: yel,
                  iconData: FontAwesomeIcons.youtube,
                ),
                SocialMediaIcon(
                  yel: yel,
                  iconData: FontAwesomeIcons.instagram,
                ),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: sz.height * 0.03, left: 50, right: 50),
            child: Row(
              children: [
                Text(
                  "Visit - ",
                  style: TextStyle(
                    color: yel,
                    fontSize: 20 * currScaleFactor,
                  ),
                ),
                Text(
                  "mnit.ac.in | mniterp.org",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20 * currScaleFactor,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
            child: Row(
              children: [
                Icon(
                  Icons.mail,
                  size: 32,
                  color: yel,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "dswmnitj@mnit.ac.in",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18 * currScaleFactor,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 50),
            child: Row(
              children: [
                Icon(
                  Icons.call,
                  size: 32,
                  color: yel,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "+0123-456-780, +123-456-787",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18 * currScaleFactor,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: (() {}),
            child: const Icon(Icons.arrow_upward_outlined),
          ),
        ],
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    Key? key,
    required this.yel,
    required this.iconData,
  }) : super(key: key);

  final Color yel;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: yel,
      size: MediaQuery.of(context).size.height * 0.04,
    );
  }
}
