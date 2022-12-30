import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AnnouncementsControlScreen extends StatefulWidget {
  const AnnouncementsControlScreen({Key? key}) : super(key: key);
  static const routeName = '/announcements_control';

  @override
  State<AnnouncementsControlScreen> createState() => _AnnouncementsControlScreenState();
}

class _AnnouncementsControlScreenState extends State<AnnouncementsControlScreen> {
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
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      labelText: "Title",
                      hintText: "Enter Title...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    maxLines: 4,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Form(
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        labelText: "Announcement",
                        hintText: "Announce...",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      maxLines: 12,
                    ),
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
                    onTap: (){},
                    child: const Text("I agree to the terms and conditions \n regarding announcement.",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),),
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
                        side: MaterialStateProperty.all(const BorderSide(color: Colors.black26)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.yellow),
                        foregroundColor: MaterialStateProperty.all(Colors.black)
                    ),
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
                  Divider(thickness: 0.0001, height: 20,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
