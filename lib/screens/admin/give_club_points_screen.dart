import 'package:flutter/material.dart';
import '../../constants/global_variables.dart';
import '../../widgets/custom_appbar.dart';

class GiveClubPointsScreen extends StatefulWidget {
  const GiveClubPointsScreen({super.key});
  static const routeName = 'give-club-points';
  @override
  State<GiveClubPointsScreen> createState() => _GiveClubPointsScreenState();
}

class _GiveClubPointsScreenState extends State<GiveClubPointsScreen> {
  var dropDown1InitialValue = "Organized an Event 1";
  var pointsTypeArray = [
    'Organized an Event 1',
    'Organized an Event 2',
    'Organized an Event 3',
    'Organized an Event 4'
  ];
  var dropDown2InitialValue = "The Mavericks";
  var clubNameArray = [
    'The Mavericks',
    'E=MC^2',
    'CS Club',
    'Data Science Club'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              width: 250,
              padding: const EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ]),
              child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropDown1InitialValue,
                  items: pointsTypeArray.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropDown1InitialValue = newValue!;
                    });
                  }),
            ),
            const Divider(
              thickness: 0.001,
            ),
            Container(
              width: 250,
              padding: const EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ]),
              child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropDown2InitialValue,
                  items: clubNameArray.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropDown2InitialValue = newValue!;
                    });
                  }),
            ),
            const Divider(
              thickness: 0.001,
            ),
            SizedBox(
              width: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 7),
                      child: const Text(
                        "+",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                  Expanded(
                      child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    controller: TextEditingController(text: "00"),
                    style: const TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ),
            const Divider(
              thickness: 0.0001,
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 12, left: 20, right: 20),
                        fixedSize: const Size.fromWidth(100),
                        elevation: 10),
                    child: const Text(
                      "Back",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: GlobalVariables.customYellow,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 20),
                        fixedSize: const Size.fromWidth(100),
                        elevation: 10),
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Divider(
              height: 50,
            ),
            Column(
              children: const [
                Text("Disclaimer: Copyright © 2022"),
                Text("Malaviya National Institute of Technology Jaipur"),
                Divider(
                  thickness: 0.0001,
                  height: 20,
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
