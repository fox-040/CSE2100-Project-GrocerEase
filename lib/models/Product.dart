import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

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
      price: 130,
      size: 12,
      description: "Handpicked hen eggs straight from the farm",
      image: 'lib/assets/images/eggs.jpg',
      color: Colors.orange),
  Product(
      id: 2,
      title: "Soyabean Oil",
      price: 845,
      size: 5000,
      description: "Best quality soyabean oil from Rupchanda",
      image: 'lib/assets/images/oil.png',
      color: Colors.yellow),
  Product(
      id: 3,
      title: "Wheat Flour",
      price: 130,
      size: 2000,
      description: "Pushti whole wheat healthy atta",
      image: 'lib/assets/images/flour.jpg',
      color: Colors.white),
  Product(
      id: 4,
      title: "Rice",
      price: 3200,
      size: 50000,
      description: "Rashid miniket rice standard",
      image: 'lib/assets/images/rice.png',
      color: Colors.white),
  Product(
      id: 5,
      title: "Potatoes",
      price: 40,
      size: 1000,
      description: "Fresh potatoes regular",
      image: 'lib/assets/images/potatoes.png',
      color: Colors.brown),
  Product(
    id: 6,
    title: "Tomatoes",
    price: 35,
    size: 500,
    description: "Fresh red tomatoes",
    image: 'lib/assets/images/tomatoes.png',
    color: Colors.red,
  ),
  Product(
    id: 7,
    title: "Water",
    price: 40,
    size: 2000,
    description: "Pure drinking water from Jibon",
    image: 'lib/assets/images/water.jpg',
    color: Colors.lightBlue,
  ),
  Product(
    id: 8,
    title: "Red Lentils",
    price: 120,
    size: 1000,
    description: "Fresh red lentils",
    image: 'lib/assets/images/red_lentils.jpg',
    color: Colors.deepOrange,
  ),
  Product(
    id: 9,
    title: "Butter",
    price: 250,
    size: 200,
    description: "Aarong dairy butter 100gm",
    image: 'lib/assets/images/butter.jpeg',
    color: Colors.white,
  ),
  Product(
    id: 10,
    title: "Honey Nuts",
    price: 1100,
    size: 800,
    description: "Tasty and healthy afternoon snacks for everyone",
    image: 'lib/assets/images/honeynuts.png',
    color: Colors.yellow,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
