import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/search.svg',
            height: 20,
            width: 20,
            colorFilter: ColorFilter.mode(
              Color(0xFF999999),
              BlendMode.srcIn,
            ),
          ),
          SizedBox(width: 10),
          Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 16,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 1.5,
            height: 25,
            decoration: BoxDecoration(
              color: Color(0xFF999999),
            ),
          ),
          SizedBox(width: 20),
          SvgPicture.asset(
            'assets/icons/tuning.svg',
          )
        ],
      ),
    );
  }
}
