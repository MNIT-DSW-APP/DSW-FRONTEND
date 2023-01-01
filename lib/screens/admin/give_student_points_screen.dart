import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../../constants/global_variables.dart';
import '../../widgets/custom_appbar.dart';

class GiveStudentPointsScreen extends StatefulWidget {
  const GiveStudentPointsScreen({super.key});
  static const routeName = 'give-student-points';
  @override
  State<GiveStudentPointsScreen> createState() =>
      _GiveStudentPointsScreenState();
}

class _GiveStudentPointsScreenState extends State<GiveStudentPointsScreen> {
  var dropDown1InitialValue = "Participant 1";
  var pointsTypeArray = [
    'Participant 1',
    'Participant 2',
    'Participant 3',
    'Participant 4'
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
      body: SingleChildScrollView(
        child: Container(
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
              const Divider(),
              Container(
                width: 300,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ]),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Title",
                      fillColor: Colors.white70),
                ),
              ),
              const Divider(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade100,
                      padding: EdgeInsets.zero,
                      elevation: 5),
                  onPressed: () {},
                  child: Container(
                    width: 310,
                    child: ListTile(
                      leading: Container(
                        height: 40,
                        width: 30,
                        child: Image.asset("lib/assets/images/xls.png"),
                      ),
                      title: TextButton(
                        child: const Text(
                          "Import from Excel sheet",
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () async {
                          final result = await FilePicker.platform.pickFiles(
                            allowedExtensions: ["xls", "xlsx", "xlsm"],
                            type: FileType.custom,
                          );
                          if (result != null) {
                            final fileExcel = result.files.first;
                            //TODO: implement excel sheet opening
                          } else {
                            // User canceled the picker
                            return;
                          }
                        },
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {},
                      ),
                    ),
                  )),
              Container(
                height: 20,
                child: const Center(
                  child: Text(
                    "--OR--",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: TextField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                        labelText: "Add a Student",
                        hintText: "Add a Student",
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)))),
                  ),
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
              const Divider(
                height: 50,
              ),
              Column(
                children: const [
                  Text("Disclaimer: Copyright © 2022"),
                  Text("Malaviya National Institute of Technology Jaipur")
                ],
              ),
              const Divider(
                thickness: 0.0001,
                height: 20,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
