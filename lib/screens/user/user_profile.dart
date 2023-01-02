import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/models/user.dart';
import 'package:dswapp/screens/user/certificates_screen.dart';
import 'package:dswapp/screens/user/register_complaint_screen.dart';
import 'package:dswapp/screens/user/register_lost_and_found.dart';
import 'package:dswapp/widgets/copyright.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  static const routeName = 'user-profile';

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>().user;
    Size sz = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 4,
                margin: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 32,
                        left: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(user.imageUrl),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                user.userName,
                                style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                user.studentId!,
                                style: const TextStyle(
                                    color: GlobalVariables.customGrey),
                              ),
                              Text(
                                "\u2022 ${user.post.toString().split('.').last}",
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 20, 92, 150),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    const Header(title: 'Details'),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          DetailsHeader(
                              title1: 'Student ID.:', title2: user.studentId!),
                          DetailsHeader(
                              title1: 'Contact No.',
                              title2: user.contactNo.toString()),
                          DetailsHeader(
                              title1: 'Email ID.:', title2: user.email),
                        ],
                      ),
                    ),
                    const Divider(),
                    const Header(title: 'Achivements'),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              FontAwesomeIcons.award,
                              size: 32,
                            ),
                            Text(
                              user.achivements![index],
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      itemCount: user.achivements!.length,
                    ),
                    const Divider(),
                    const Header(title: 'Joined Societies'),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 10,
                          bottom: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\u2022 ${user.clubs![index].clubName}',
                                  style: const TextStyle(fontSize: 17),
                                ),
                                Text(
                                  user.clubs![index].post,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: GlobalVariables.textGrey,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              user.clubs![index].date,
                              style: const TextStyle(
                                fontSize: 16,
                                color: GlobalVariables.textGrey,
                              ),
                            )
                          ],
                        ),
                      ),
                      itemCount: user.clubs!.length,
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 4,
                margin: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            FontAwesomeIcons.certificate,
                            size: 32,
                          ),
                          Text(
                            '${user.achivements!.length}    Certificates earned!',
                            style: const TextStyle(
                              fontSize: 22,
                              color: GlobalVariables.customGrey,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed(
                          CertificatesScreen.routeName,
                          arguments: user,
                        ),
                        child: const Text(
                          'View list',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(0, 105, 255, 0.9),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 4,
                margin: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircularPercentIndicator(
                        radius: 90,
                        lineWidth: 15,
                        progressColor: const Color.fromRGBO(255, 218, 64, 1),
                        percent: 0.33,
                        animation: true,
                        animationDuration: 1500,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: const Text(
                          '33%',
                          style: TextStyle(
                              color: GlobalVariables.customGrey, fontSize: 40),
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            'Points : 33',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Rank : 3883',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(LostAndFoundRegisterScreen.routeName),
                        child: Text('Register Lost/Found item')),
                    Text(
                      '|',
                      style: TextStyle(color: GlobalVariables.lightGrey),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(ComplaintRegisterScreen.routeName),
                        child: Text('Register complaint'))
                  ],
                ),
              ),
              Copyright(),
            ],
          ),
        ));
  }
}

class DetailsHeader extends StatelessWidget {
  final String title1;
  final String title2;

  const DetailsHeader({super.key, required this.title1, required this.title2});
  @override
  Widget build(BuildContext context) {
    // return RichText(
    //     text: TextSpan(children: [
    //   TextSpan(
    //       text: title1,
    //
    //   TextSpan(
    //       text: title2,
    //       ),
    // ]));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title1,
          style: const TextStyle(
              fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black),
        ),
        Text(title2,
            style: const TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 16,
              color: GlobalVariables.textGrey,
            )),
      ],
    );
  }
}

class Header extends StatelessWidget {
  final String title;

  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: GlobalVariables.customGrey,
        fontSize: 24,
      ),
    );
  }
}
