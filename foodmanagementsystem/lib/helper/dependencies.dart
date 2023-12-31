import 'package:foodmanagementsystem/controllers/cart_controller.dart';
import 'package:foodmanagementsystem/controllers/popular_product_controller.dart';
import 'package:foodmanagementsystem/controllers/recommended_product_controller.dart';
import 'package:foodmanagementsystem/data/api/api_client.dart';
import 'package:foodmanagementsystem/data/repository/cart_repo.dart';
import 'package:foodmanagementsystem/data/repository/popular_product_repo.dart';
import 'package:foodmanagementsystem/data/repository/recommended_product_repo.dart';
import 'package:foodmanagementsystem/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  
  //api clients
  Get.lazyPut(() => sharedPreferences);
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo(sharedPreferences:Get.find()));
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
