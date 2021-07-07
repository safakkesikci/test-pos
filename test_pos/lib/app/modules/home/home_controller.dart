import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
// final HomeRepository repository;
// HomeController(this.repository);

  final GlobalKey<FormState> homeFormKey = GlobalKey<FormState>();

  late TextEditingController searchController;

  var isSearchMode = false.obs;

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  void searchClick() {
    if (isSearchMode.value) searchController.clear();
  }
}
