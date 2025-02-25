import 'package:ecommerce_app_provider/model/product.dart';
import 'package:ecommerce_app_provider/widgets/category_section.dart';
import 'package:ecommerce_app_provider/widgets/custom_app_bar.dart';
import 'package:ecommerce_app_provider/widgets/custom_image_slider.dart';
import 'package:ecommerce_app_provider/widgets/custom_search_bar.dart';
import 'package:ecommerce_app_provider/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //custom app bar
                CustomAppBar(),
                SizedBox(height: 20),
                //search bar
                CustomSearchBar(),
                //slider
                SizedBox(height: 20),
                CustomImageSlider(
                  onChange: (value) {
                    setState(() {
                      currentSlider = value;
                    });
                  },
                  currentSlide: currentSlider,
                ),
                SizedBox(height: 20),
                //category section
                CategorySection(),
                SizedBox(height: 10),
                //sppaecial
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Special for you',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
                //grid for shopping items
                // ShoppingItemsGrid(),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.78,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: products[index],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
