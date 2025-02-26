import 'package:ecommerce_app_provider/model/product.dart';
import 'package:ecommerce_app_provider/utils/color_constants.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final Product product;
  const ItemDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //product title
        Text(
          product.title,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        //price and seller in a row
        Row(
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$${product.price}",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //seller
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Seller: ",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextSpan(
                    text: "John Doe",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        //price tag
        Row(
          children: [
            Container(
              width: 50,
              height: 23,
              decoration: BoxDecoration(
                color: ColorConstants.kPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 14,
                    color: Colors.white,
                  ),
                  SizedBox(width: 3),
                  Text(
                    product.rate.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Text(
              product.review.toString(),
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFFBEBEBE),
              ),
            )
          ],
        )
      ],
    );
  }
}
