import 'package:ecommerce_app_provider/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: ColorConstants.kContentColor,
            padding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/settings.svg',
            height: 30,
            width: 30,
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: ColorConstants.kContentColor,
            padding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/notification.svg',
            height: 30,
            width: 30,
          ),
        ),
      ],
    );
  }
}
