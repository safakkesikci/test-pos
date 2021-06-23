import 'package:get/get.dart';
import 'package:test_pos/app/modules/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    /*  LoginController(
     LoginRepository(MyApi()))); */
  }
}
