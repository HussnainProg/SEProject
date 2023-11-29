import 'package:flutter/material.dart';
import 'package:foodmanagementsystem/controllers/cart_controller.dart';
import 'package:foodmanagementsystem/controllers/popular_product_controller.dart';
import 'package:foodmanagementsystem/controllers/recommended_product_controller.dart';
import 'package:foodmanagementsystem/pages/auth/sign_in_page.dart';
import 'package:foodmanagementsystem/pages/auth/sign_up_page.dart';
import 'package:foodmanagementsystem/pages/cart/cart_page.dart';
import 'package:foodmanagementsystem/pages/food/popular_food_detail.dart';
import 'package:foodmanagementsystem/pages/food/recommended_food_detail.dart';
import 'package:foodmanagementsystem/pages/home/food_page_body.dart';
import 'package:foodmanagementsystem/pages/home/main_food_page.dart';
import 'package:foodmanagementsystem/pages/splash/splash_page.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;
import 'package:foodmanagementsystem/routes/route_helper.dart';

Future<void> main() async {
  //make sure that dependencies are initialized
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getCartData();
    return GetBuilder<PopularProductController>(builder: (_) {
      return GetBuilder<RecommendedProductController>(builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          //home: SignInPage(),
          home: const SplashScreen(),
          //initialRoute: RouteHelper.getSplashpage(),
          //getPages: RouteHelper.routes,
        );
      });
    });
  }
}
