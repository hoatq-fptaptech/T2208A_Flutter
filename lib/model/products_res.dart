import 'package:t2208a_flutter/model/product_model.dart';

class ProductsRes{
  late List<ProductModel> products;
  late int total;
  late int skip;
  late int limit;

  ProductsRes.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products.add(new ProductModel.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

}