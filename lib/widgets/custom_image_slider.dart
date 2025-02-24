import 'package:flutter/material.dart';

class CustomImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const CustomImageSlider(
      {super.key, required this.onChange, required this.currentSlide});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 222,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: PageView(
              onPageChanged: onChange,
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              physics: ClampingScrollPhysics(),
              children: [
                Image.asset(
                  'assets/images/xbox.png',
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/xbox.png',
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/xbox.png',
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => AnimatedContainer(
                  duration: Duration(microseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: currentSlide == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
