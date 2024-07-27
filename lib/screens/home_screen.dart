import 'package:flutter/material.dart';
import 'package:t2208a_flutter/screens/ui/home/home_carousel.dart';
import 'package:t2208a_flutter/screens/ui/home/home_category.dart';
import 'package:t2208a_flutter/screens/ui/home/home_product.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CarouselWidget(),
          HomeCategory(),
          HomeProduct()
        ],
      ),
    );
  }
}