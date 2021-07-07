import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pos/app/global_widgets/pos_drawer.dart';
import 'package:test_pos/app/global_widgets/product_search.dart';
import 'package:test_pos/app/modules/home/wigets/HomeActionMenu.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: PosDrawer(),
      appBar: AppBar(title: Text('HomePage')),
      body: SafeArea(
          child: Obx(
        () => Container(
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
                    Focus(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Product Name, SKU, Barcode",
                          prefixIcon: IconButton(
                            icon: Icon(controller.isSearchMode.value
                                ? Icons.arrow_back_outlined
                                : Icons.search),
                            onPressed: () {
                              controller.searchClick();
                              FocusScope.of(context).unfocus();
                            },
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
                      onFocusChange: (hasFocus) {
                        controller.isSearchMode.value = hasFocus;
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: controller.isSearchMode.value
                  ? ProductSearch()
                  : Column(
                      children: [
                        Expanded(child: HomeActionMenu()),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                            alignment: AlignmentDirectional.bottomCenter,
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                child: Text('SHOPPING CART'),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ]),
        ),
      )),
    );
  }
}
