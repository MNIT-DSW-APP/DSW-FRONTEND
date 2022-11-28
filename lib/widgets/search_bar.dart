import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: 12,
      ),
      width: sz.width - 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.6),
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.arrow_circle_right_sharp),
              color: Color.fromRGBO(255, 214, 41, 1),
              onPressed: (() {}),
            ),
            hintText: "query/complaint",
            border: InputBorder.none,
          ),
        ),
      )),
    );
  }
}
