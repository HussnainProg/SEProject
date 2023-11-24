import 'package:foodmanagementsystem/data/api/api_client.dart';
import 'package:foodmanagementsystem/utils/app_constants.dart';
import 'package:get/get.dart';

// it connects with api client: need Internet Connection
class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;
  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
