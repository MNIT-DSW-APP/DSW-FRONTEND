import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';

//TODO: add this screen
class CertificationsScreen extends StatefulWidget {
  static const routeName = '/certifications';

  const CertificationsScreen({super.key});

  @override
  State<CertificationsScreen> createState() => _CertificationsScreenState();
}

class _CertificationsScreenState extends State<CertificationsScreen> {
  var dropDownInitialValue = "Appreciation 1";
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
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )]
                    ),
                    child: DropdownButton<String>(
                      isExpanded: true,
                        value: dropDownInitialValue,
                        items: <String>['Appreciation 1', 'Appreciation 2', 'Appreciation 3', 'Appreciation 4'].map((String value) {
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
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      )]
                    ),
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
                  const Divider(thickness: .5,),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Add Tags",
                          fillColor: Colors.white70),
                    ),
                  ),
                  const Divider(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade100,
                        padding: EdgeInsets.zero,
                        elevation: 5),
                      onPressed: (){},
                      child: Container(
                        width: 310,
                        child: ListTile(
                          leading: Container(
                            height: 40, width: 30,
                            child: Image.asset("lib/assets/images/xls.png"),
                          ),
                          title: TextButton(
                              child: const Text("Import from Excel sheet", style: TextStyle(fontSize: 15),),
                            onPressed: ()async {
                              final result = await FilePicker.platform
                                  .pickFiles(
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
                            onPressed: (){},),
                        ),
                      )
                  ),
                  Container(
                    height: 20,
                    child: const Center(
                      child: Text("--OR--", style: TextStyle(color: Colors.grey, fontSize: 10),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 300,
                      child: TextField(
                        onChanged: (value) {
                        },
                        decoration: const InputDecoration(
                            labelText: "Add a Student",
                            hintText: "Add a Student",
                            suffixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(25.0))
                            )
                        ),
                      ),
                    ),
                  ),
                  const Divider(height: 50, thickness: 0.0001,),
                  Container(
                    width: 300,
                    alignment: AlignmentDirectional.centerEnd,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: GlobalVariables.customYellow,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
                      child: const Text("Continue", style: TextStyle(color: Colors.black),),
                      onPressed: (){},
                    ),
                  ),
                  const Divider(height: 50,),
                  Column(
                    children: const [
                      Text("Disclaimer: Copyright © 2022"),
                      Text("Malaviya National Institute of Technology Jaipur")
                    ],
                  ),
                  const Divider(thickness: 0.0001, height: 20,)
                ],
              ),
            ),
          ),
        )
    );
  }
}
