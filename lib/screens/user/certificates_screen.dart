import 'package:dswapp/models/user.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/global_variables.dart';

class CertificatesScreen extends StatelessWidget {
  const CertificatesScreen({Key? key}) : super(key: key);

  static const routeName = '/user-certificates';

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Card(
            elevation: 4,
            margin: const EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 22,
                left: 15,
                bottom: 25,
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
                        style:
                            const TextStyle(color: GlobalVariables.customGrey),
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
          ),
          Card(
            elevation: 4,
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
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
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  15,
                ),
                topRight: Radius.circular(
                  15,
                ),
              ),
              color: GlobalVariables.customGrey,
            ),
            width: double.infinity,
            child: const Text(
              'Certificates',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
          Card(
            elevation: 4,
            margin: const EdgeInsets.only(
              bottom: 20,
              left: 20,
              right: 20,
            ),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var curr = user.achivements![index];
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 25, left: 20, bottom: 10, right: 10),
                  child: Column(
                    children: [
                      Text(
                        curr,
                        style: const TextStyle(
                          fontSize: 18,
                          color: GlobalVariables.customGrey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            '09 June 22',
                            style: TextStyle(
                              color: GlobalVariables.customGrey,
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.download,
                              ))
                        ],
                      ),
                      const Divider(
                        indent: 0,
                        endIndent: 0,
                      ),
                    ],
                  ),
                );
              },
              itemCount: user.achivements!.length,
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
              children: const [
                Text('Register Lost/Found item'),
                Text(
                  '|',
                  style: TextStyle(color: GlobalVariables.lightGrey),
                ),
                Text('Register complaint')
              ],
            ),
          ),
        ],
      )),
    );
  }
}
