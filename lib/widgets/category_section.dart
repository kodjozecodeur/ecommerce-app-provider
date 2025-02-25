import 'package:ecommerce_app_provider/model/category.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      categories[index].image,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                categories[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, index) => SizedBox(
          width: 20,
        ),
      ),
    );
  }
}
