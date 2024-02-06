import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Product.dart';
//import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Available"),
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Colors.white,
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Colors.white,
                    isSelected: true,
                  ),
                  ColorDot(color: Colors.white, isSelected: false),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.blue),
              children: [
                TextSpan(text: "Size\n"),
                TextSpan(
                  text: "${product.size} gm",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({super.key, required this.color, required this.isSelected});

  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20 / 4,
        right: 20 / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
