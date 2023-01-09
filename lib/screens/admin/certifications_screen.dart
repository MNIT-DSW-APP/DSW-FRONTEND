import 'dart:math';

import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';
import '../../widgets/chip_data.dart';

class CertificationsScreen extends StatefulWidget {
  static const routeName = '/certifications';

  const CertificationsScreen({super.key});

  @override
  State<CertificationsScreen> createState() => _CertificationsScreenState();
}

class _CertificationsScreenState extends State<CertificationsScreen> {
  var dropDownInitialValue = "Appreciation 1";

  final List<Chipdata> _chipList = [];
  final TextEditingController _chipText = TextEditingController();
  void deleteChips(String title){
    setState(() {
      _chipList.removeWhere((element) => element.title == title);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 300,
                child: Image.asset("lib/assets/images/demo_certificate.png"),
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
                    value: dropDownInitialValue,
                    items: <String>[
                      'Appreciation 1',
                      'Appreciation 2',
                      'Appreciation 3',
                      'Appreciation 4'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropDownInitialValue = newValue!;
                      });
                    }),
              ),
              const Divider(thickness: .5),
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
              const Divider(
                thickness: .5,
              ),
              Wrap(
                spacing: 5,
                children: _chipList.map((chip) => Chip(
                  label: Text(chip.title, style: TextStyle(fontSize: 12),),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.8),
                    child: Text(
                      chip.avText[0],
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  onDeleted: (){
                    deleteChips(chip.title);
                  },
                  backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                )).toList(),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(child: TextField(
                      controller: _chipText,
                      decoration: InputDecoration(border: OutlineInputBorder(),
                        hintText: "Tags", hintStyle: TextStyle(color: Colors.grey[800]),),
                    )),
                    const SizedBox(width: 5,),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        _chipList.add(Chipdata(title: _chipText.text, color: Colors.primaries[Random().nextInt(Colors.primaries.length)], avText: _chipText.text));
                        _chipText.text = '';
                      });
                    }, child: const Text("Add Tags"))
                  ],
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
                height: 50,
                thickness: 0.0001,
              ),
              Container(
                width: 300,
                alignment: AlignmentDirectional.centerEnd,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: GlobalVariables.customYellow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20)),
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
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
