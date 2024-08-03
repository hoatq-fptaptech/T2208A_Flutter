
import 'package:flutter/cupertino.dart';
import 'package:t2208a_flutter/model/cart_item.dart';

class Bloc extends ChangeNotifier{
    List<CartItem> _cartItems = []; // data
    String? _jwt ;
  // tạo 1 stream để get data từ state
    Stream<List<CartItem>> get cartItemsStream => Stream.value(_cartItems);
    String? get getToken => _jwt;

    void addToCart(CartItem item){
        _cartItems.add(item); // chưa check sp đã có trong giỏ hay chưa?
        notifyListeners();
    }

    void removeCart(int itemId){
        _cartItems.removeWhere((element) => element.id == itemId);
        notifyListeners();
    }

    void loadToken(String token){
        _jwt = token;
        notifyListeners();
    }
}