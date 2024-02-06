import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Product.dart';
//import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
