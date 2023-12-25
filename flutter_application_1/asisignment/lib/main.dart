import 'package:flutter/material.dart';

void main() {
  runApp(const ProductPage());
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: 
          CrossAxisAlignment.stretch,
          children: [
            Text(
              'Product Name',
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 17),
            Image.asset(name)
          ],
        ),
      ),
    );
   
  }
  }

  //@override
  

