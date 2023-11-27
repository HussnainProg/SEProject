import 'package:foodmanagementsystem/data/repository/recommended_product_repo.dart';
import 'package:foodmanagementsystem/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList = []; // private variable
  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  // get product list from the server
  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      print("got recommended products");
      _recommendedProductList = [];
      _recommendedProductList.addAll(
          Product.fromJson(response.body).products); // it will return objects
      //print(_recommendedProductList);
      _isLoaded = true;
      update(); // this tell UI that data has been updated
    } else {
      print("Could not get recommended products.");
    }
  }
}
