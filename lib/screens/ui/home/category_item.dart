import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget{
    const CategoryItem({super.key});

    @override
  Widget build(BuildContext context) {
      return Column(
         children: [
           Image.network(
               "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png",
                width: 150,
              height: 120,
           ),
           Text("Fruits")
         ],
      );
  }
}