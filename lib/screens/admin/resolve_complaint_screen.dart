import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/models/complaint.dart';
import 'package:dswapp/widgets/chip_data.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ResolveComplaintScreen extends StatefulWidget {
  static const routeName = '/resolve-complaint';

  @override
  State<ResolveComplaintScreen> createState() => _ResolveComplaintScreenState();
}

class _ResolveComplaintScreenState extends State<ResolveComplaintScreen> {
  @override
  Widget build(BuildContext context) {
    final complaint = ModalRoute.of(context)!.settings.arguments as Complaint;
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
              left: 25,
              right: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  complaint.title,
                  style: const TextStyle(
                      color: GlobalVariables.customGrey,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  complaint.date,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
