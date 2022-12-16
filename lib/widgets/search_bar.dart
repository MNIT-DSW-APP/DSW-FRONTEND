import 'package:dswapp/constants/global_variables.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
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
              icon: const Icon(Icons.arrow_circle_right_sharp),
              color: GlobalVariables.customYellow,
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
