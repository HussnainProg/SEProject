import 'dart:convert';

import 'package:foodmanagementsystem/models/cart_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartRepo {
  final SharedPreferences sharedPreferences;
  CartRepo({required this.sharedPreferences});

  List<String> cart = [];
  void addToCartList(List<CartModel> cartList) {
    cart = [];
    // converting object into string as shared preferences only accept string
    cartList.forEach((element) {
      return cart.add(jsonEncode(element));
    });
    sharedPreferences.setStringList("Cart-list", cart);
    print(sharedPreferences.getStringList("Cart-list"));
  }
}
