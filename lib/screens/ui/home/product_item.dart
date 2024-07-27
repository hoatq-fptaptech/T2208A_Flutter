import 'package:flutter/material.dart';
import 'package:t2208a_flutter/model/product_model.dart';

class ProductItem extends StatelessWidget{
  final ProductModel product;
  const ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          product.thumbnail,
          width: 150,
          height: 120,
        ),
        Text(product.title),
        FloatingActionButton(
            onPressed: (){},
          child: Icon(Icons.add_shopping_cart),
        )
      ],
    );
  }
}