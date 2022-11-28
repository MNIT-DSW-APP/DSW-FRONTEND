import 'package:dswapp/constants.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                  margin: EdgeInsets.only(
                    top: 10,
                    right: 10,
                  ),
                  child: _imageEditingController.text.isEmpty
                      ? Text("Enetr a URL")
                      : FittedBox(
                          child: Image.network(_imageEditingController.text),
                          fit: BoxFit.cover,
                        ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("Image Upload"),
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
            SizedBox(
              height: 20,
            ),
            Text(
              "Select start date of event",
              style: TextStyle(
                color: customGrey,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Select date"),
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
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '${dt.day}/${dt.month}/${dt.year}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  height: 30,
                  width: 150,
                ),
              ],
            ),
            Text(
              "Select End date of event",
              style: TextStyle(
                color: customGrey,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Select date"),
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
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '${dt.day}/${dt.month}/${dt.year}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  height: 30,
                  width: 150,
                ),
              ],
            ),
            Text(
              "Select End date of Registration",
              style: TextStyle(
                color: customGrey,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Select date"),
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
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '${dt.day}/${dt.month}/${dt.year}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  height: 30,
                  width: 150,
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
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
