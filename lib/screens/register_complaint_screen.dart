import 'package:dswapp/widgets/copyright.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ComplaintRegisterScreen extends StatefulWidget {
  const ComplaintRegisterScreen({Key? key}) : super(key: key);
  static const routeName = '/complaint_registration';

  @override
  State<ComplaintRegisterScreen> createState() => _ComplaintRegisterScreen();
}

class _ComplaintRegisterScreen extends State<ComplaintRegisterScreen> {
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
              const Copyright(),
            ],
          ),
        ),
      ),
    );
  }
}
