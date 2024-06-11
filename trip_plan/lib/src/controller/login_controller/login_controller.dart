import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trip_plan/src/repositories/authentication_repo/authentication_repo.dart';
import 'package:trip_plan/src/utils/Loaders/loaders.dart';

import '../../bottom_navigation/bottom_navigation.dart';

class LoginController extends GetxController {
  LoginController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final RxBool isShowPassword = true.obs;

  final GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

  signInWithEmailAndPassword() async {
    try {
      await _authRepo.signin(email.text, password.text);
      Loaders.successfullySnackBar(
          title: "Welcome Back", message: "You have been logged in");
      Get.offAll(BottomNavigation());
    } catch (e) {
      Loaders.errorSnackBar(title: "Oh Snap", message: e);
    }
  }
}
