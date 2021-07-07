import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pos/app/global_widgets/pos_drawer.dart';
import 'package:test_pos/app/modules/home/wigets/HomeActionMenu.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: PosDrawer(),
      appBar: AppBar(title: Text('HomePage')),
      body: SafeArea(
        child: Container(
          width: context.width,
          height: context.height,
          child: Column(children: [
            SingleChildScrollView(
              child: Form(
                key: controller.homeFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Product Name, SKU, Barcode",
                        prefixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.backpack),
                          onPressed: () {},
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: false,
                      controller: controller.searchController,
                      onSaved: (value) {},
                      validator: (value) {},
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: HomeActionMenu()),
            TextButton(onPressed: () {}, child: Text('button'))
          ]),
        ),
      ),
    );
  }
}
