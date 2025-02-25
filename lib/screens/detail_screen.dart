import 'package:ecommerce_app_provider/model/product.dart';
import 'package:ecommerce_app_provider/utils/color_constants.dart';
import 'package:ecommerce_app_provider/widgets/custom_detail_app_bar.dart';
import 'package:ecommerce_app_provider/widgets/custom_detail_image_slider.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kContentColor,
      body: SafeArea(
        child: Column(
          children: [
            //app-bar for share and favite
            const CustomDetailAppBar(),
            //detail  image slider
            CustomDetailImageSlider(
              image: widget.product.image,
              onChange: (index) {
                setState(() {
                  currentImage = index;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
