import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pos/global_widgets/pos_drawer.dart';

import 'customer_controller.dart';

class CustomerPage extends GetView<CustomerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: PosDrawer(),
        appBar: AppBar(title: Text('CustomerPage')),
        body: SafeArea(child: Text('CustomerController')));
  }
}
