import 'package:get/get.dart';
import 'package:test_pos/app/modules/customer/customer_page.dart';
import 'package:test_pos/app/modules/home/home_binding.dart';
import 'package:test_pos/app/modules/home/home_page.dart';
import 'package:test_pos/app/modules/login/login_binding.dart';
import 'package:test_pos/app/modules/login/login_page.dart';
import 'package:test_pos/app/routes/pos_routes.dart';

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
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.CUSTOMER,
      page: () => CustomerPage(),
    )
  ];
}
