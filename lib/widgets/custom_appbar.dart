import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(65.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      leading: Padding(
        padding: const EdgeInsets.all(8),
        child: Image.asset(
          'lib/assets/images/Mnit_logo.png',
          fit: BoxFit.cover,
        ),
      ),
      title: const Text(
        'DSW',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
