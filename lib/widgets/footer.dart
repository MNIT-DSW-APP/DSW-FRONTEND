// ignore_for_file: prefer_const_constructors

import 'package:dswapp/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  Footer({Key? key}) : super(key: key);

  final Color yel = Color.fromRGBO(255, 214, 41, 1);

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(49, 56, 66, 1),
      ),
      height: sz.height - 40,
      width: sz.width,
      child: Column(
        children: [
          SizedBox(
            height: 66,
          ),
          Container(
            child: Image.asset("lib/assets/images/Mnit_logo.png"),
            height: 99,
            width: 99,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Text(
              "Malaviya National Institute of Technology Jaipur",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "Jawahar Lal Nehru Marg,",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              "Jaipur-302017 (Rajasthan) INDIA",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          Text(
            "webmaster[at]mnit.ac.in",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Have any query?",
            style: TextStyle(color: yel, fontSize: 20),
            textAlign: TextAlign.left,
          ),
          SearchBar(),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: yel,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.facebook_outlined,
                  color: yel,
                  size: 40,
                ),
                Icon(
                  FontAwesomeIcons.linkedin,
                  color: yel,
                  size: 32,
                ),
                Icon(
                  FontAwesomeIcons.twitter,
                  color: yel,
                  size: 32,
                ),
                Icon(
                  FontAwesomeIcons.youtube,
                  color: yel,
                  size: 32,
                ),
                Icon(
                  FontAwesomeIcons.instagram,
                  color: yel,
                  size: 32,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
            child: Row(
              children: [
                Text(
                  "Visit - ",
                  style: TextStyle(
                    color: yel,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "mnit.ac.in | mniterp.org",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
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
                        fontSize: 18,
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
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: (() {}),
            child: Icon(Icons.arrow_upward_outlined),
          ),
        ],
      ),
    );
  }
}
