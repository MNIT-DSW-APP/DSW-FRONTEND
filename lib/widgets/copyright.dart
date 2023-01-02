import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Copyright extends StatelessWidget {
  const Copyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("Disclaimer: Copyright © 2022"),
        Text("Malaviya National Institute of Technology Jaipur"),
        Divider(
          thickness: 0.0001,
          height: 20,
        )
      ],
    );
  }
}
