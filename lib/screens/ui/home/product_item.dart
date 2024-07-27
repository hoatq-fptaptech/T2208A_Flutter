import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2208a_flutter/bloc/bloc.dart';
import 'package:t2208a_flutter/model/cart_item.dart';
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
            onPressed: (){
              CartItem newItem = CartItem(
                  id: product.id,
                  title: product.title,
                  thumbnail: product.thumbnail,
                  price: product.price,
                  buyQty: 1
              );
              final bloc = Provider.of<Bloc>(context, listen: false);
              bloc.addToCart(newItem);
            },
          child: Icon(Icons.add_shopping_cart),
        )
      ],
    );
  }
}