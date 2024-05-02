import 'package:belle_house_mobile_app/controllers/popular_products_controller.dart';
import 'package:belle_house_mobile_app/data/api/api_client.dart';
import 'package:belle_house_mobile_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //load apiclient
  Get.lazyPut(() => ApiClient(appBaseUrl: 'appBaseUrl'));
  //load repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
