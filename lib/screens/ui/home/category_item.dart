import 'package:flutter/material.dart';
import 'package:t2208a_flutter/model/category_model.dart';

class CategoryItem extends StatelessWidget{
  final Category category;
  const CategoryItem({required this.category});

    @override
  Widget build(BuildContext context) {
      return Column(
         children: [
           Image.network(
               "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png",
                width: 150,
              height: 120,
           ),
           Text(category.name)
         ],
      );
  }
}