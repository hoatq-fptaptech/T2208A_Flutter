import 'package:flutter/material.dart';
import 'package:t2208a_flutter/screens/ui/home/category_item.dart';

class HomeCategory extends StatelessWidget{
    const HomeCategory({super.key});

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
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return CategoryItem();
                    }
                ),
              )
            ],
          ),
      );
  }
}