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
    title: "Adidas Men's Shoes",
    description:
        "Men's Casual sneaker shoes running shoes walking shoes Running Shoes For Men",
    image: "assets/images/shoes.jpg",
    review: "(320 Reviews)",
    seller: "Adidas",
    price: 190,
    colors: [
      Colors.black,
      Colors.grey,
      Colors.blue,
    ],
    category: "Casuals",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Laptop",
    description: "Macbook Air Apple M1 - (8 GB/SSD/256 GB SSD/Mac OS Big Sur)",
    image: "assets/images/laptop.jpg",
    review: "(5689 Reviews)",
    seller: "apple",
    price: 920,
    colors: [
      Colors.black,
      Colors.grey,
      Colors.blue,
    ],
    category: "Casuals",
    rate: 9.7,
    quantity: 1,
  ),
  Product(
    title: "Rolex Watch",
    description: "WH Day and Date Analog Watch - For Men",
    image: "assets/images/watch.jpg",
    review: "(520 Reviews)",
    seller: "Rolex",
    price: 370,
    colors: [
      Colors.black,
      Colors.grey,
      Colors.blue,
    ],
    category: "Casuals",
    rate: 5.2,
    quantity: 1,
  ),
  Product(
    title: "Phone",
    description: "iphone 14 (blue,128 GB)",
    image: "assets/images/mobile.jpg",
    review: "(320 Reviews)",
    seller: "apple",
    price: 690,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.grey,
    ],
    category: "Casuals",
    rate: 9.2,
    quantity: 1,
  ),
  Product(
    title: "Idee",
    description: "UV Protection Retro Square Sunglasses",
    image: "assets/images/sunglasses.jpg",
    review: "(320 Reviews)",
    seller: "Idee",
    price: 90,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.grey,
    ],
    category: "Casuals",
    rate: 4.2,
    quantity: 1,
  ),
  Product(
    title: "Adidas Women's Shoes",
    description:
        "Women's Casual sneaker shoes running shoes walking shoes Running Shoes For Women",
    image: "assets/images/shoes4.jpg",
    review: "(320 Reviews)",
    seller: "Adidas",
    price: 150,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.grey,
    ],
    category: "Casuals",
    rate: 4.2,
    quantity: 1,
  ),
  Product(
    title: "Arrow men's Fashion",
    description: "Men Slim Fit Seif Design Spread Collar Casual Shirt",
    image: "assets/images/shirt.jpg",
    review: "(320 Reviews)",
    seller: "Adidas",
    price: 190,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.grey,
    ],
    category: "Casuals",
    rate: 6.2,
    quantity: 1,
  ),
  Product(
    title: "Athena Women's Fashion",
    description: "Women Printed Cotton Rayon Anarkali Kurta",
    image: "assets/images/fashion.jpg",
    review: "(320 Reviews)",
    seller: "Adidas",
    price: 150,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.grey,
    ],
    category: "Casuals",
    rate: 5.2,
    quantity: 1,
  ),
];
