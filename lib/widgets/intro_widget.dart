import 'package:flutter/material.dart';

class IntroWidget extends StatelessWidget {
  final String imageUrl;
  final String title;

  const IntroWidget({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      height: sz.height - 400.0,
      width: sz.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.65),
              BlendMode.darken,
            )),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(40),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 38,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffffffff),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
              ),
            ),
          )
        ],
      ),
    );
  }
}
