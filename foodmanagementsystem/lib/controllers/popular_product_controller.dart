import 'package:flutter/material.dart';
import 'package:foodmanagementsystem/controllers/cart_controller.dart';
import 'package:foodmanagementsystem/data/repository/popular_product_repo.dart';
import 'package:foodmanagementsystem/models/products_model.dart';
import 'package:foodmanagementsystem/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = []; // private variable
  List<dynamic> get popularProductList => _popularProductList;
  late CartController _cart;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;

  // get product list from the server
  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("got products");
      _popularProductList = [];
      _popularProductList.addAll(
          Product.fromJson(response.body).products); // it will return objects
      print(_popularProductList);
      _isLoaded = true;
      update(); // this tell UI that data has been updated
    } else {}
  }

  // increasing and decreasing items in cart
  // true: item is to increased based on click
  // false: item is to be decreased based on click
  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      print("increment" + _quantity.toString());
      _quantity = checkQuantity(_quantity + 1);
    } else {
      print("decrement" + _quantity.toString());
      _quantity = checkQuantity(_quantity - 1);
    }
    //tells UI about update
    update();
  }

  // local scope; local scope gets priority on global scope
  int checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar("Item count", "You can't reduce more !",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 0;
    } else if (quantity > 20) {
      Get.snackbar("Item count", "You can't add more !",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(CartController cart) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    //if exists
    //get from storage _inCartItem=3
  }

  void addItem(ProductModel product) {
    _cart.addItem(product, _quantity);
  }
}
