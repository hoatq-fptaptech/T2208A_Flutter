import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2208a_flutter/bloc/bloc.dart';
import 'package:t2208a_flutter/model/cart_item.dart';

class CartScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: StreamBuilder<List<CartItem>>(
         stream: Provider.of<Bloc>(context,listen: false).cartItemsStream,
         builder: (context,snapshot){
           if(!snapshot.hasData){
             return Text("Your cart is empty");
           }else{
             final cartItems = snapshot.data!;
             return ListView.builder(
                 itemCount: cartItems.length,
                 itemBuilder: (context,index){
                   return Text(cartItems[index].title);
                 }
             );
           }
         },
       ),
     );
  }
}