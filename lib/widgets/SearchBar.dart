import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search_Bar extends StatelessWidget {
  const Search_Bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 35),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(
              fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w400),
          icon: SvgPicture.asset("assests/icons/search.svg"),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
