import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../constants/global_variables.dart';

class HostEventScreen extends StatefulWidget {
  const HostEventScreen({Key? key}) : super(key: key);
  static const routeName = '/host_event';

  @override
  State<HostEventScreen> createState() => _HostEventScreenState();
}

class _HostEventScreenState extends State<HostEventScreen> {
  final _imageEditingController = TextEditingController();
  final _textEditingController = TextEditingController();
  DateTime dt = DateTime(2022, 12, 24);
  @override
  void dispose() {
    _imageEditingController.dispose();
    _textEditingController.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: Form(
          child: ListView(children: [
            const Padding(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
              child: Text(
                "Host an Event",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
              maxLines: 5,
              keyboardType: TextInputType.multiline,
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  margin: const EdgeInsets.only(
                    top: 10,
                    right: 10,
                  ),
                  child: _imageEditingController.text.isEmpty
                      ? const Text("Enetr a URL")
                      : FittedBox(
                          fit: BoxFit.cover,
                          child: Image.network(_imageEditingController.text),
                        ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: const Text("Image Upload"),
                    ),
                    keyboardType: TextInputType.url,
                    textInputAction: TextInputAction.done,
                    controller: _imageEditingController,
                    onEditingComplete: (() {
                      setState(() {});
                    }),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Select start date of event",
              style: const TextStyle(
                color: GlobalVariables.customGrey,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("Select date"),
                  onPressed: () async {
                    DateTime? newdate = await showDatePicker(
                      context: context,
                      initialDate: dt,
                      firstDate: dt,
                      lastDate: DateTime(2030),
                    );
                    if (newdate == null)
                      return;
                    else
                      setState(() {
                        dt = newdate;
                      });
                  },
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 30,
                  width: 150,
                  child: Text(
                    '${dt.day}/${dt.month}/${dt.year}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const Text(
              "Select End date of event",
              style: TextStyle(
                color: GlobalVariables.customGrey,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("Select date"),
                  onPressed: () async {
                    DateTime? newdate = await showDatePicker(
                      context: context,
                      initialDate: dt,
                      firstDate: dt,
                      lastDate: DateTime(2030),
                    );
                    if (newdate == null)
                      return;
                    else {
                      setState(() {
                        dt = newdate;
                      });
                    }
                  },
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 30,
                  width: 150,
                  child: Text(
                    '${dt.day}/${dt.month}/${dt.year}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const Text(
              "Select End date of Registration",
              style: TextStyle(
                color: GlobalVariables.customGrey,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("Select date"),
                  onPressed: () async {
                    DateTime? newdate = await showDatePicker(
                      context: context,
                      initialDate: dt,
                      firstDate: dt,
                      lastDate: DateTime(2030),
                    );
                    if (newdate == null)
                      return;
                    else
                      setState(() {
                        dt = newdate;
                      });
                  },
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 30,
                  width: 150,
                  child: Text(
                    '${dt.day}/${dt.month}/${dt.year}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Registration Link",
              ),
              keyboardType: TextInputType.url,
            ),
          ]),
        ),
      ),
    ));
  }
}
