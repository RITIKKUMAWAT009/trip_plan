import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_plan/src/bottom_navigation/bottom_navigation.dart';
import 'package:trip_plan/src/repositories/authentication_repo/authentication_repo.dart';
import 'package:trip_plan/src/utils/Loaders/loaders.dart';

class SignUpController extends GetxController {
  final _authRepo = Get.put(AuthenticationRepository());

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController userName = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final RxBool isShowPassword = true.obs;
  final RxBool isPrivacyAccepted=false.obs;

  signUpWithEmailAndPassword() async {
    try {
      if(isPrivacyAccepted.value==false){
        Loaders.warningSnackBar(title: 'Accept Privacy Policy', message: 'Please read our term & condition');
        return;
      }
      await _authRepo.signUpWithEmailAndPassword(name.text, email.text,password.text,userName.text);
      Loaders.successfullySnackBar(
          title: "Congratulations",
          message: "Your Account created Successfully");
      Get.offAll(BottomNavigation());
    } catch (e) {
      Loaders.errorSnackBar(title: "Oh Snap", message: e);

      print(e);
    }
  }
}
