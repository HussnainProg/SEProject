import 'package:foodmanagementsystem/pages/cart/cart_page.dart';
import 'package:foodmanagementsystem/pages/food/popular_food_detail.dart';
import 'package:foodmanagementsystem/pages/food/recommended_food_detail.dart';
import 'package:foodmanagementsystem/pages/home/home_page.dart';
import 'package:foodmanagementsystem/pages/home/main_food_page.dart';
import 'package:foodmanagementsystem/pages/splash/splash_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String splashPage = "/splash-page";
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";

  static String getSplashpage() => '$splashPage';
  static String getInitial() => '$initial';
  static String getPopularFood(int pageId, String page) {
    var uri =
        Uri(path: '$popularFood/$pageId', queryParameters: {'page': page});
    return uri.toString();
  }
  // for single page
  //static String getRecommendedFood(int pageId) => '$recommendedFood/$pageId';
  static String getRecommendedFood(int pageId, String page) {
    var uri =
        Uri(path: '$recommendedFood/$pageId', queryParameters: {'page': page});
    return uri.toString();
  }
  static String getCartPage() => '$cartPage';

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => SplashScreen()),
    GetPage(name: initial, page: () => HomePage()),
    GetPage(
        name: '$popularFood/:pageId',
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters['page'];
          return PopularFoodDetail(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    GetPage(
        name: '$recommendedFood/:pageId',
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters['page'];
          return RecommendedFoodDetail(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    GetPage(
        name: cartPage,
        page: () {
          return CartPage();
        },
        transition: Transition.fadeIn
        )
  ];
}
