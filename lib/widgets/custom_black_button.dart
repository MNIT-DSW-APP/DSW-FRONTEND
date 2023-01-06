import 'package:dswapp/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomBlackButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final String routename;
  const CustomBlackButton({
    super.key,
    required this.title,
    required this.icon,
    required this.routename,
  });

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Container(
      height: sz.height*0.095,
      width: sz.width*0.9,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(routename);
        },
        style: ElevatedButton.styleFrom(
          primary: GlobalVariables.customGrey,
          padding: const EdgeInsets.symmetric(
            vertical: 0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 22,
              color: Colors.white,
            ),
            SizedBox(
              height: sz.height*0.01,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
