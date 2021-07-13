import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SearchMode { None, Empty, Searching }

class HomeController extends GetxController {
// final HomeRepository repository;
// HomeController(this.repository);

  final GlobalKey<FormState> homeFormKey = GlobalKey<FormState>();

  late TextEditingController searchController;

  var searchMode = SearchMode.None.obs;
  //var isSearchMode = false.obs;

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

  void searchBackClick() {
    if (searchMode.value != SearchMode.None) searchController.clear();
  }

  void onSearchEditFocusChange(bool hasFocus) {
    searchMode.value = hasFocus ? SearchMode.Empty : SearchMode.None;
    if (!hasFocus) searchController.clear();
  }

  void onSearchEditValidation(String value) {
    if (value.isEmpty) return;

    //searchMode.value = value.isEmpty ? SearchMode.Empty : SearchMode.Searching;
  }

  void onSearchEditChanged(String value) {
    searchMode.value = value.isEmpty ? SearchMode.Empty : SearchMode.Searching;
  }
}
