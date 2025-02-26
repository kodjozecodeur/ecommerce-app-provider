import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDetailAppBar extends StatelessWidget {
  const CustomDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: SvgPicture.asset(
              'assets/icons/arrow_left.svg',
              height: 30,
              width: 30,
            ),
          ),
          Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/share.svg',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/favorite.svg',
              height: 30,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
