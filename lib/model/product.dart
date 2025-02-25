import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.review,
    required this.seller,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

final List<Product> products = [
  Product(
    title: "Huawei Buds",
    description:
        "The Huawei Buds are wireless earbuds that offer high-quality sound and a comfortable fit. They have a built-in microphone for making and receiving calls, and they can be used with both iOS and Android devices. They also have a long battery life and can be charged using a USB-C cable.",
    image: "assets/images/mibuds.png",
    review: "(20 review)",
    seller: "Huawei",
    price: 1099.99,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.red,
    ],
    category: "Electronics",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Huawei Buds",
    description:
        "The Huawei Buds are wireless earbuds that offer high-quality sound and a comfortable fit. They have a built-in microphone for making and receiving calls, and they can be used with both iOS and Android devices. They also have a long battery life and can be charged using a USB-C cable.",
    image: "assets/images/mibuds.png",
    review: "(20 review)",
    seller: "Huawei",
    price: 1099.99,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.red,
    ],
    category: "Electronics",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Huawei Buds",
    description:
        "The Huawei Buds are wireless earbuds that offer high-quality sound and a comfortable fit. They have a built-in microphone for making and receiving calls, and they can be used with both iOS and Android devices. They also have a long battery life and can be charged using a USB-C cable.",
    image: "assets/images/mibuds.png",
    review: "(20 review)",
    seller: "Huawei",
    price: 1099.99,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.red,
    ],
    category: "Electronics",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Huawei Buds",
    description:
        "The Huawei Buds are wireless earbuds that offer high-quality sound and a comfortable fit. They have a built-in microphone for making and receiving calls, and they can be used with both iOS and Android devices. They also have a long battery life and can be charged using a USB-C cable.",
    image: "assets/images/mibuds.png",
    review: "(20 review)",
    seller: "Huawei",
    price: 1099.99,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.red,
    ],
    category: "Electronics",
    rate: 4.5,
    quantity: 1,
  ),
];
