import 'package:get/get.dart';
import 'package:test_pos/modules/customer/customer_page.dart';
import 'package:test_pos/modules/home/home_binding.dart';
import 'package:test_pos/modules/home/home_page.dart';
import 'package:test_pos/modules/login/login_page.dart';
import 'package:test_pos/routes/pos_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.CUSTOMER,
      page: () => CustomerPage(),
    )
  ];
}
