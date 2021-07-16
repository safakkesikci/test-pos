import 'package:get/get.dart';
import 'package:test_pos/app/global_widgets/product_last.dart';
import 'package:test_pos/app/global_widgets/product_search.dart';

import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    /* HomeController(
     HomeRepository(MyApi())));*/

//Last Product Dependencies
    Get.lazyPut(() => ProductLastApi());
    Get.lazyPut(() => ProductLastRepository(Get.find<ProductLastApi>()));
    Get.lazyPut(() => ProductLastController(Get.find<ProductLastRepository>()));

//Search Product Dependencies
    Get.lazyPut(() => ProductSearchApi());
    Get.lazyPut(() => ProductSearchRepository(Get.find<ProductSearchApi>()));
    Get.lazyPut(
        () => ProductSearchController(Get.find<ProductSearchRepository>()));
  }
}
