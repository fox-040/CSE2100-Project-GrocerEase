import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Eggs",
      price: 160,
      size: 12,
      description: "Handpicked hen eggs straight from the farm",
      image: 'assets/images/eggs.jpg',
      color: Colors.orange),
  Product(
      id: 2,
      title: "Soyabean Oil",
      price: 170,
      size: 1000,
      description: "Best quality soyabean oil from Rupchanda",
      image: 'assets/images/oil.png',
      color: Colors.yellow),
  Product(
      id: 3,
      title: "Flour",
      price: 130,
      size: 2000,
      description: "Pushti whole wheat healthy atta",
      image: 'assets/images/flour.jpg',
      color: Colors.white),
  Product(
      id: 4,
      title: "Rice",
      price: 3200,
      size: 50000,
      description: "Rashid miniket rice standard",
      image: 'assets/images/rice.png',
      color: Colors.white),
  Product(
      id: 5,
      title: "Potatoes",
      price: 40,
      size: 1000,
      description: "Fresh potatoes regular",
      image: 'assets/images/potatoes.png',
      color: Colors.brown),
  Product(
    id: 6,
    title: "Tomatoes",
    price: 35,
    size: 500,
    description: "Fresh red tomatoes",
    image: 'assets/images/tomatoes.png',
    color: Colors.red,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
