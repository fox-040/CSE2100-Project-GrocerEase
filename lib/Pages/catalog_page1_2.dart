import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<String> productName = [
    'Mango',
    'Orange',
    'Grapes',
    'Banana',
    'Cherry',
    'Peach',
    //'Mixed Fruit Basket',
  ];
  List<String> productUnit = [
    'KG',
    'Dozen',
    'KG',
    'Dozen',
    'KG',
    'KG',
    //'KG',
  ];
  List<int> productPrice = [
    10,
    20,
    30,
    40,
    50,
    60,
    //70,
  ];
  List<String> productImage = [
    'https://www.shutterstock.com/image-photo/ripe-mango-isolated-on-white-clipping-1297537549',
    'https://www.shutterstock.com/image-photo/orange-sliced-green-leaves-isolated-on-2053015835',
    'https://www.shutterstock.com/image-photo/grapes-isolated-bunch-ripe-blue-leaves-2294980639',
    'https://www.shutterstock.com/image-photo/bunch-bananas-isolated-on-white-background-1722111529',
    'https://www.shutterstock.com/image-photo/cherry-isolated-cherries-leaves-on-white-2141795027',
    'https://www.shutterstock.com/image-photo/peach-isolate-slice-leaf-on-white-1550458292',
    'https://www.shutterstock.com/image-photo/wicker-basket-different-fruits-on-white-1922825435',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: productImage.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage(
                                      productImage[index].toString()),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        productName[index].toString(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        productUnit[index].toString() +
                                            " " +
                                            r"$" +
                                            productPrice[index].toString(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height: 5),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 35,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text(
                                              'Add to cart',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ));
  }
}
