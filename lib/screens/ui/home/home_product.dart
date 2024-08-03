import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2208a_flutter/bloc/bloc.dart';
import 'package:t2208a_flutter/model/product_model.dart';
import 'package:t2208a_flutter/model/products_res.dart';
import 'package:t2208a_flutter/screens/ui/home/product_item.dart';

class HomeProduct extends StatefulWidget{
    const HomeProduct({super.key});

    @override
    _HomeProductState createState()=> _HomeProductState();
}

class _HomeProductState extends State<HomeProduct>{
  List<ProductModel> _products = [];

  Future<void> _getProduct() async{
    try{
      // call api
      const url = "https://dummyjson.com/products?limit=12";
      Response response = await Dio().get(url);
      ProductsRes rs = ProductsRes.fromJson(response.data);
      setState(() {
        _products = rs.products;
      });
    }catch(e){
      print(e);
    }
  }

  Future<void> _login() async{
    try{
      const url = "http://localhost:8080/auth/login";
      final Map<String, dynamic> data = {
        "email":"quanghoa@gmail.com",
        "password":"12345678"
      };
      Response response = await Dio().post(url,data: data);
      LoginRes lg = LoginRes.fromJson(response.data);
      final bloc = Provider.of<Bloc>(context, listen: false);
      bloc.loadToken(lg.token);
      print(lg);
    }catch(e){
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _getProduct();
    _login();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Text("Products")
            ],
          ),
          Container(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _products.length,
                itemBuilder: (context,index){
                  return ProductItem(product:_products[index]);
                }
            ),
          )
        ],
      ),
    );
  }
}