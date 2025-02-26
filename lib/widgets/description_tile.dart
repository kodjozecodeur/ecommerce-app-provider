import 'package:ecommerce_app_provider/utils/color_constants.dart';
import 'package:flutter/material.dart';

class DescriptionTile extends StatelessWidget {
  final String title;
  const DescriptionTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                color: ColorConstants.kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
