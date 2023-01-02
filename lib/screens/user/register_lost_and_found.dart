import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class LostAndFoundRegisterScreen extends StatefulWidget {
  const LostAndFoundRegisterScreen({Key? key}) : super(key: key);
  static const routeName = '/lost-and-found_registration';

  @override
  State<LostAndFoundRegisterScreen> createState() =>
      _LostAndFoundRegisterScreen();
}

class _LostAndFoundRegisterScreen extends State<LostAndFoundRegisterScreen> {
  bool termsAndConditionCheckbox = false;

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
                      labelText: "Title",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Enter Title...",
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
              const Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text("limit: 50 words",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, color: Colors.grey)),
                ),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              const BorderSide(color: Colors.black26)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white30),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      onPressed: () {},
                      child: const Text(
                        "Upload Image",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "(Optional)",
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 10,
                                color: Colors.grey),
                          ),
                        ),
                        Text(
                          "\t (Image size must not exceed 2MB.)",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ],
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
                      "I agree to the terms and conditions \n regarding registration.",
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
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
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
