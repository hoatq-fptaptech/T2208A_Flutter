import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:t2208a_flutter/screens/ui/home/category_item.dart';

import '../../../model/category_model.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key});

  @override
  _HomeCategoryState createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory>{
  List<Category> _list = [];

  Future<void> _getCategories() async {
      try{
        // call api
        const url = "https://dummyjson.com/products/categories";
        Response response = await Dio().get(url);
        List<Category> ls = [];
        for( int i=0;i<response.data.length;i++){
          ls.add(Category.fromJson(response.data[i]));
        }
        setState(() {
          _list = ls;
        });
      }catch(e){
        print(e);
      }
  }


  @override
  void initState() {
    super.initState();
    _getCategories();
  }

  @override
  Widget build(BuildContext context) {

      return Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Category"),
                  Text("View all")
                ],
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _list.length,
                    itemBuilder: (context,index){
                      return CategoryItem(category:_list[index]);
                    }
                ),
              )
            ],
          ),
      );
  }
}