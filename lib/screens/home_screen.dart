import 'package:flutter/material.dart';
import 'package:t2208a_flutter/screens/ui/home/Carousel.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Carousel()
        ],
      ),
    );
  }
}