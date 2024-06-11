import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

import 'package:trip_plan/src/controller/login_controller/login_controller.dart';
import 'package:trip_plan/src/screens/Sign-up/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        title: const Text('Login to Trip World'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
          child: Column(
            children: [
              Lottie.asset('assets/animation/login.json',
                  height: MediaQuery.of(context).size.height / 3 - 50,
                  width: MediaQuery.of(context).size.width / 1),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: controller.signInFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Your Email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Enter email address',
                          prefixIcon: const Icon(Icons.email),
                          labelStyle: const TextStyle(color: Colors.black),
                          labelText: 'Email'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => TextFormField(
                        obscureText: controller.isShowPassword.value,
                        controller: controller.password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Enter your password',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  controller.isShowPassword.value =
                                      !controller.isShowPassword.value;
                                },
                                icon: controller.isShowPassword.value
                                    ? Icon(Iconsax.eye_slash)
                                    : Icon(Iconsax.eye)),
                            prefixIcon: const Icon(Icons.lock),
                            labelStyle: const TextStyle(color: Colors.black),
                            labelText: 'Password'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  child: const Text(
                    'Login',
                  ),
                  onPressed: () {
                    if (controller.signInFormKey.currentState!.validate()) {
                      controller.signInWithEmailAndPassword();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.blue[800],
                      foregroundColor: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Don't have an account?"),
                TextButton(
                  child: Text(
                    'SignUp',
                    style: TextStyle(color: Colors.blue.shade800),
                  ),
                  onPressed: () {
                    Get.to(() => SignUPSccreen());
                  },
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
