import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pos/app/global_widgets/pos_drawer.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: PosDrawer(),
        appBar: AppBar(title: Text('HomePage')),
        body: SafeArea(child: Text('HomeController')));
  }
}
