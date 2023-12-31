import 'package:foodmanagementsystem/data/api/api_client.dart';
import 'package:foodmanagementsystem/utils/app_constants.dart';
import 'package:get/get.dart';

// it connects with api client: need Internet Connection
class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}
