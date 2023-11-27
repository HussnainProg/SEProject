import 'dart:convert';

import 'package:foodmanagementsystem/models/cart_model.dart';
import 'package:foodmanagementsystem/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartRepo {
  final SharedPreferences sharedPreferences;
  CartRepo({required this.sharedPreferences});
  // cart page which is inside the food pages
  List<String> cart = [];
  List<String> cartHistory = []; //cart page which is on Navigation

  //object into json
  void addToCartList(List<CartModel> cartList) {
    
    cart = [];
    // converting object into string as shared preferences only accept string
    cartList.forEach((element) => cart.add(jsonEncode(element)));
    // we have key and value pairs
    sharedPreferences.setStringList(AppConstants.CART_LIST, cart);
    //print(sharedPreferences.getStringList(AppConstants.CART_LIST));
    getCartList();
  }

  //json to List of object
  List<CartModel> getCartList() {
    List<String> carts = [];
    if (sharedPreferences.containsKey(AppConstants.CART_LIST)) {
      carts = sharedPreferences.getStringList(AppConstants.CART_LIST)!;
      //print("inside getCartList" + carts.toString());
    }
    List<CartModel> cartList = [];

    carts.forEach(
        (element) => cartList.add(CartModel.fromJson(jsonDecode(element))));

    return cartList;
  }

  void addToCartHistoryList() {
    for (int i = 0; i < cart.length; i++) {
      //print("history list " + cart[i]);
      cartHistory.add(cart[i]);
    }
    removeCart();
    sharedPreferences.setStringList(
        AppConstants.CART_HISTORY_LIST, cartHistory);
  }

  void removeCart(){
    sharedPreferences.remove(AppConstants.CART_LIST);
  }
}
