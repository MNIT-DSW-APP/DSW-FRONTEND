import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/models/complaint.dart';
import 'package:dswapp/providers/complaint_providers.dart';
import 'package:dswapp/widgets/complaints_card.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ComplaintsScreen extends StatelessWidget {
  static const routeName = 'complaints';

  const ComplaintsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var complaintsList = context.watch<ComplaintProvider>().complaints;
    var viewedComplaintsList =
        context.watch<ComplaintProvider>().viewedcomplaints;
    final wd = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(wd: wd, title: 'Pending'),
            CardBuilder(complaintsList: complaintsList),
            Header(wd: wd, title: 'Viewed'),
            CardBuilder(complaintsList: viewedComplaintsList),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.wd,
    required this.title,
  }) : super(key: key);

  final double wd;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 40,
      ),
      width: wd,
      color: GlobalVariables.lightGrey,
      child: Text(
        title,
        // textAlign: TextAlign.center,
        style: const TextStyle(
          color: GlobalVariables.customGrey,
          fontSize: 16,
        ),
      ),
    );
  }
}

class CardBuilder extends StatelessWidget {
  const CardBuilder({
    Key? key,
    required this.complaintsList,
  }) : super(key: key);

  final List<Complaint> complaintsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        var currComplaint = complaintsList[index];
        return ComplaintsCard(
          complaint: currComplaint,
        );
      },
      itemCount: complaintsList.length,
    );
  }
}
