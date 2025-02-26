import 'package:ecommerce_app_provider/model/product.dart';
import 'package:ecommerce_app_provider/utils/color_constants.dart';
import 'package:ecommerce_app_provider/widgets/custom_detail_app_bar.dart';
import 'package:ecommerce_app_provider/widgets/custom_detail_image_slider.dart';
import 'package:ecommerce_app_provider/widgets/description_tile.dart';
import 'package:ecommerce_app_provider/widgets/item_details.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0; //for the image slider
  int currentColor = 0;
  // int currentSlide = 0; //for the color slider
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
            ),
            SizedBox(
              height: 10,
            ),
            //colors slider
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: Duration(microseconds: 300),
                  width: currentImage == index ? 15 : 8,
                  height: 8,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: currentImage == index
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
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemDetails(
                    product: widget.product,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //colors
                  Text(
                    'Color',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: List.generate(
                      widget.product.colors.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentColor = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 40,
                          height: 40,
                          padding:
                              currentColor == index ? EdgeInsets.all(2) : null,
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: currentColor == index
                                ? Colors.white
                                : widget.product.colors[index],
                            border: currentColor == index
                                ? Border.all(
                                    color: widget.product.colors[index],
                                    width: 2)
                                : null,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: widget.product.colors[index],
                                shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //description tile
                  DescriptionTile(
                    title: widget.product.description,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
