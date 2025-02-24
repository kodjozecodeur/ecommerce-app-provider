import 'package:ecommerce_app_provider/widgets/custom_app_bar.dart';
import 'package:ecommerce_app_provider/widgets/custom_image_slider.dart';
import 'package:ecommerce_app_provider/widgets/custom_search_bar.dart';
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
