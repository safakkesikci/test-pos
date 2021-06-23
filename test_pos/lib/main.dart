import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pos/routes/pos_pages.dart';
import 'package:test_pos/routes/pos_routes.dart';

import 'modules/home/home_binding.dart';
import 'modules/home/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    navigatorKey: Get.key,
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    // theme: appThemeData,
    defaultTransition: Transition.fade,
    // initialBinding: HomeBinding(),
    getPages: AppPages.pages,
    home: HomePage(),
  ));
}
