import 'package:flutter/material.dart';
import 'package:foodmanagementsystem/pages/food/popular_food_detail.dart';
import 'package:foodmanagementsystem/pages/food/recommended_food_detail.dart';
import 'package:foodmanagementsystem/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

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
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecommendedFoodDetail(),
    );
  }
}
