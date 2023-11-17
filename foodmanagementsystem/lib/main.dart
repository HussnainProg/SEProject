import 'package:flutter/material.dart';
import 'package:foodmanagementsystem/pages/food/popular_food_detail.dart';
import 'package:foodmanagementsystem/pages/home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PopularFoodDetail(),
    );
  }
}
