import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../widgets/copyright.dart';

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
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
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
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
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
                child: Column(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade100,
                            padding: EdgeInsets.zero,
                            elevation: 5),
                        onPressed: () {},
                        child: SizedBox(
                          width: 310,
                          child: ListTile(
                            leading: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                  "lib/assets/images/upload_image.jpg"),
                            ),
                            title: TextButton(
                              child: const Text(
                                "Upload Image",
                                style: TextStyle(fontSize: 15),
                              ),
                              onPressed: () async {
                                final result =
                                    await FilePicker.platform.pickFiles(
                                  allowedExtensions: [
                                    "png",
                                    "jpeg",
                                    "jpg",
                                    "svg"
                                  ],
                                  type: FileType.custom,
                                );
                                if (result != null) {
                                  final fileImage = result.files.first;
                                  //TODO: implement image opening
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
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Align(
                            child: Text(
                              "(Optional)",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 9,
                                  color: Colors.grey),
                            ),
                          ),
                          Text(
                            "(Image size must not exceed 2MB)",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                                color: Colors.black87),
                          ),
                        ],
                      ),
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
                        fontSize: 13,
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
              const Copyright(),
            ],
          ),
        ),
      ),
    );
  }
}
