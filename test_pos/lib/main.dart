import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pos/app/routes/pos_pages.dart';
import 'package:test_pos/app/routes/pos_routes.dart';

import 'app/modules/home/home_binding.dart';
import 'app/modules/home/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    navigatorKey: Get.key,
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.LOGIN,
    //theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    home: HomePage(),
  ));
}
