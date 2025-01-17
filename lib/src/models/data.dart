import 'package:ecommerce/src/models/category.dart';
import 'package:ecommerce/src/models/product.dart';
import 'package:flutter/foundation.dart';

class AppData {
  static List<Product> productList = [
    Product(
        id: 1,
        name: 'Nike Air Max 200',
        price: 240.00,
        isSelected: true,
        isLiked: false,
        imageUrl: 'assets/shooe_tilt_1.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'Nike Air Max 97',
        price: 220.00,
        isLiked: false,
        imageUrl: 'assets/shoe_tilt_2.png',
        category: "Trending Now",
        isSelected: false
    ),
  ];

  static List<Product> cartList = [
    Product(
        id: 1,
        name: 'Nike Air Max 200',
        price: 240.00,
        isSelected: true,
        isLiked: false,
        imageUrl: 'assets/small_tilt_shoe_1.png',
        category: "Trending Now"
    ),
    Product(
        id: 2,
        name: 'Nike Air Max 97',
        price: 190.00,
        isLiked: false,
        imageUrl: 'assets/small_tilt_shoe_2.png',
        category: "Trending Now",
        isSelected: false
    ),
    Product(
        id: 1,
        name: 'Nike Air Max 92607',
        price: 220.00,
        isLiked: false,
        imageUrl: 'assets/small_tilt_shoe_3.png',
        category: "Trending Now", isSelected: false
    ),
    Product(
        id: 2,
        name: 'Nike Air Max 200',
        price: 240.00,
        isSelected: true,
        isLiked: false,
        imageUrl: 'assets/small_tilt_shoe_1.png',
        category: "Trending Now"),
  ];

  static List<ProductCategory> categoryList = [
    ProductCategory(
      id: 1,
      name: "Sneaker",
      imageUrl: "assets/shoe_thumb_2.png",
      isSelected: true,
    ),
    ProductCategory(
      id: 2,
      name: "Jacket",
      imageUrl: "assets/jacket.png",
      isSelected: false,
    ),
    ProductCategory(
      id: 3,
      name: "Watch",
      imageUrl: "assets/watch.png",
      isSelected: false,
    ),
    ProductCategory(
      id: 4,
      name: "Watch",
      imageUrl: "assets/watch.png",
      isSelected: false,
    ),
  ];

  static List<String> showThumbnailList = [
    "assets/shoe_thumb_5.png",
    "assets/shoe_thumb_1.png",
    "assets/shoe_thumb_4.png",
    "assets/shoe_thumb_3.png",
  ];

  static String description = "Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.";
}