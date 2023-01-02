import 'dart:math';

import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/chip_data.dart';

class ComplaintRegisterScreen extends StatefulWidget {
  const ComplaintRegisterScreen({Key? key}) : super(key: key);
  static const routeName = '/complaint_registration';

  @override
  State<ComplaintRegisterScreen> createState() => _ComplaintRegisterScreen();
}

class _ComplaintRegisterScreen extends State<ComplaintRegisterScreen> {
  bool termsAndConditionCheckbox = false;

  final List<Chipdata> _chipList = [];
  final TextEditingController _chipText = TextEditingController();
  void deleteChips(String title) {
    setState(() {
      _chipList.removeWhere((element) => element.title == title);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      labelText: "Complaint Title",
                      labelStyle: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      hintText: "Enter Complaint Title...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    maxLines: 4,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Wrap(
                  spacing: 7,
                  children: _chipList
                      .map((chip) => Chip(
                            label: Text(chip.title),
                            onDeleted: () {
                              deleteChips(chip.title);
                            },
                            backgroundColor: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          ))
                      .toList(),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: TextField(
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                        controller: _chipText,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _chipList.add(Chipdata(
                              title: _chipText.text,
                              color: Colors.primaries[
                                  Random().nextInt(Colors.primaries.length)],
                              avText: _chipText.text[0]));
                          _chipText.text = '';
                        });
                      },
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(10),
                          side: MaterialStateProperty.all(
                              const BorderSide(color: Colors.black26)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.yellow),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      child: const Text("Add Tags"),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      labelText: "Description",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Enter description...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    maxLines: 12,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15.0, bottom: 15, top: 2),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text("limit: 1000 words",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, color: Colors.grey)),
                ),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: termsAndConditionCheckbox,
                    onChanged: (value) {
                      setState(() {
                        termsAndConditionCheckbox = value!;
                      });
                    },
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "I agree to the terms and conditions \n regarding complaint registration.",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(10),
                        side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.black26)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.yellow),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: termsAndConditionCheckbox == true ? () {} : null,
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const Divider(height: 50),
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
      ),
    );
  }
}
