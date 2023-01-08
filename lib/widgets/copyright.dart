import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  const Copyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: const [
          Text(
            "Disclaimer: Copyright © 2022",
            overflow: TextOverflow.fade,
          ),
          Text(
            "Malaviya National Institute of Technology Jaipur",
          ),
        ],
      ),
    );
  }
}
