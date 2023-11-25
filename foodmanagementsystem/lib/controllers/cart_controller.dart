import 'package:flutter/material.dart';
import 'package:foodmanagementsystem/data/repository/cart_repo.dart';
import 'package:foodmanagementsystem/models/cart_model.dart';
import 'package:foodmanagementsystem/models/products_model.dart';
import 'package:foodmanagementsystem/utils/colors.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

  void addItem(ProductModel product, int quantity) {
    var totalQuantity = 0;
    //print("length of item is "+_items.length.toString());

    if (_items.containsKey(product.id!)) {
      _items.update(product.id!, (value) {

        totalQuantity = value.quantity! + quantity;

        return CartModel(
          id: value.id,
          name: value.name,
          price: value.price,
          img: value.img,
          location: value.location,
          quantity: value.quantity! + quantity,
          isExist: true,
          time: DateTime.now().toString(),
        );
      });
      if(totalQuantity<=0){
        _items.remove(product.id);
      }
    } else {
      if (quantity > 0) {
        _items.putIfAbsent(product.id!, () {
          /* print("adding item to the cart" +product.id!.toString() +"quantity" +quantity.toString());
      _items.forEach((key, value) {
        print("quantity is " + value.quantity.toString());
      });*/
          return CartModel(
            id: product.id,
            name: product.name,
            price: product.price,
            img: product.img,
            location: product.location,
            quantity: quantity,
            isExist: true,
            time: DateTime.now().toString(),
          );
        });
      } else {
        Get.snackbar(
            "Item count", "You should at least add an item in the cart!",
            backgroundColor: AppColors.mainColor, colorText: Colors.white);
      }
    }
  }

  bool existInCart(ProductModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    }
    return false;
  }

  int getQuantity(ProductModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }
}