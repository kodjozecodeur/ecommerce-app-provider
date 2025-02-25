import 'package:flutter/material.dart';

class CustomDetailImageSlider extends StatelessWidget {
  final String image;
  final Function(int) onChange;
  const CustomDetailImageSlider(
      {super.key, required this.image, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemBuilder: (context, index) {
          return Image.asset(image);
        },
      ),
    );
  }
}
