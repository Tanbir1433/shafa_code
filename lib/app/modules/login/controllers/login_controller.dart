import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final regFromKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final regEmailController = TextEditingController();
  final regPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  var isLoginSelected = true.obs;

  void selectLogin() {
    isLoginSelected.value = true;
  }

  void selectSignup() {
    isLoginSelected.value = false;
  }



  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    regEmailController.dispose();
    regPasswordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}