import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/details_screen.dart';
import 'package:flutter_application_1/components/catagories.dart';
import 'package:flutter_application_1/components/item_card.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:shop_app/constants.dart';

import '../../models/Product.dart';
//import '../details/details_screen.dart';
//import 'components/categorries.dart';
//import 'components/item_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        const SizedBox(height: 48),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text("Good Morning."),
        ),
         SizedBox(height: 4),
        Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items for you",
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            )),

             SizedBox(height: 24),
            //divider
             Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 24.0),
              child: Divider(),
            ),

             SizedBox(height: 24),
            Padding(
               padding:  EdgeInsetsDirectional.symmetric(horizontal: 24.0),
              child: Text("Fresh Items",style: TextStyle(fontSize: 16),),
            ),

             
      ],
    )
    )
    );

    /*
      child: ElevatedButton(
        child: Text("Back"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },*/
  }
}
