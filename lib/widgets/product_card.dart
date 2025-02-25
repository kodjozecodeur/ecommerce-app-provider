import 'package:ecommerce_app_provider/model/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFF6F6F6),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Image.asset(
                    product.image,
                    width: 133,
                    height: 133,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    product.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$${product.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        product.colors.length,
                        (index) {
                          return Container(
                            margin: EdgeInsets.only(left: 5),
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: product.colors[index],
                              shape: BoxShape.circle,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
