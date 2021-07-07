import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pos/app/data/model/user.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  UserModel userModel =
      UserModel(userName: 'pos.test.user@gmail.com', password: '123456');

  var isPasswordVisible = false.obs;
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailController.text = userModel.userName!;
    passwordController.text = userModel.password!;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  bool checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return false;
    }
    loginFormKey.currentState!.save();
    return true;
  }
}
