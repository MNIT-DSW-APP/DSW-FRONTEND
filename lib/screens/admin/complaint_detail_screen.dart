import 'package:dswapp/models/complaint.dart';
import 'package:dswapp/screens/admin/resolve_complaint_screen.dart';
import 'package:dswapp/widgets/chip_data.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../constants/global_variables.dart';

class ComplaintDetailScreen extends StatelessWidget {
  static const routeName = '/complaint-detail-screen';
  Color textGrey = const Color.fromRGBO(49, 56, 66, 0.47);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final complaint = ModalRoute.of(context)!.settings.arguments as Complaint;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 35,
                left: 25,
                right: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    complaint.title,
                    style: const TextStyle(
                        color: GlobalVariables.customGrey,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    complaint.date,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Chipdata(
                    title: complaint.isSolved ? 'Solved' : 'Active',
                    color: complaint.isSolved
                        ? const Color.fromRGBO(7, 163, 69, 1)
                        : const Color.fromRGBO(185, 62, 62, 1),
                    avText: complaint.isSolved ? 'S' : 'A',
                  ),
                  Chipdata(
                    title: complaint.hostelNumber.toString().substring(8),
                    color: Colors.green,
                    avText: 'H',
                  ),
                  const Chipdata(
                    title: 'Hostel Office',
                    color: Color.fromRGBO(245, 177, 28, 1),
                    avText: 'O',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Text(
                lorem(
                  paragraphs: 2,
                  words: 100,
                ),
                style: TextStyle(
                  color: textGrey,
                  fontSize: 20,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(width * 0.05),
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Header(title: 'Hostel Office'),
                    Description(),
                    const ForwardTo(),
                    const CustomDivider(),
                    const Header(title: 'Hostel 8'),
                    Description(),
                    const ForwardTo(),
                    const CustomDivider(),
                    const Header(
                      title: 'Comaplaint Approved by Admin',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, bottom: 56),
              child: ElevatedButton(
                // onPressed: (() {
                //   Navigator.of(context).pushNamed(
                //       ResolveComplaintScreen.routeName,
                //       arguments: complaint);
                // }),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(7, 163, 69, 1),
                  padding: const EdgeInsets.all(12),
                ),
                child: const Text('Resolve >>>'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      endIndent: 0,
      indent: 0,
      color: Color.fromRGBO(224, 223, 223, 1),
    );
  }
}

class ForwardTo extends StatelessWidget {
  const ForwardTo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Forwarded to   ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        CircularButton(),
        CircularButton(),
        CircularButton(),
      ],
    );
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      lorem(
        paragraphs: 1,
        words: 25,
      ),
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String title;

  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: GlobalVariables.customGrey,
                fontSize: 21,
              ),
            ),
          ),
          const Spacer(),
          const Text(
            '4h ago',
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  const CircularButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 20,
      height: 20,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(217, 217, 217, 1),
      ),
    );
  }
}
