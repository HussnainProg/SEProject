import 'package:foodmanagementsystem/data/repository/popular_product_repo.dart';
import 'package:foodmanagementsystem/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = []; // private variable
  List<dynamic> get popularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

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
}
