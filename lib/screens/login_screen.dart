// ignore_for_file: prefer_const_constructors

import 'package:dswapp/constants.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);
  static const routeName = "/log_in";

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

Widget buildEmail() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 25,
      vertical: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email:",
          style: TextStyle(color: customGrey, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color.fromRGBO(49, 56, 66, 0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 14),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        ),
      ],
    ),
  );
}

Widget buildPassword() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 25,
      // vertical: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password:",
          style: TextStyle(color: customGrey, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color.fromRGBO(49, 56, 66, 0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 14),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.password_outlined),
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        ),
      ],
    ),
  );
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(),
      endDrawer: NavigationDrawer(),
      body: Container(
        height: sz.height,
        width: sz.width,
        margin: const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 10,
              ),
              child: Text(
                "Welcome Back!",
                style: TextStyle(
                    color: customGrey,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            buildEmail(),
            SizedBox(
              height: 30,
            ),
            buildPassword(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Forgot / Reset Password?",
                style: TextStyle(color: customGrey, fontSize: 15),
              ),
            ),
            Divider(),
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            //   child: Text(
            //     "Enter Security No. in the box below -",
            //     style: TextStyle(color: customGrey, fontSize: 16),
            //   ),
            // ),
            ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                  primary: customYellow,
                  padding: EdgeInsets.symmetric(
                    horizontal: 75,
                    vertical: 10,
                  )),
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
