import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/models/complaint.dart';
import 'package:dswapp/screens/admin/complaint_detail_screen.dart';
import 'package:flutter/material.dart';

class ComplaintsCard extends StatelessWidget {
  final Complaint complaint;

  const ComplaintsCard({super.key, required this.complaint});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
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
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                complaint.date,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 25,
            top: 15,
            right: 25,
            bottom: 8,
          ),
          child: Text(
            complaint.description,
            style: const TextStyle(
              color: Colors.grey,
            ),
            maxLines: 3,
            overflow: TextOverflow.clip,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ComplaintDetailScreen.routeName,
                arguments: complaint);
          },
          child: const Text(
            'view status',
            style:
                TextStyle(color: Color.fromRGBO(31, 114, 160, 1), fontSize: 16),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
