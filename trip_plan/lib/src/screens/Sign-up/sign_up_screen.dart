import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

import 'package:trip_plan/src/controller/sign_up_controller/sign_up_controller.dart';

class SignUPSccreen extends StatelessWidget {
  SignUPSccreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        title: const Text(
          "Sign up to Trip World",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset('assets/animation/login.json',
                  height: MediaQuery.of(context).size.height / 3 - 100,
                  width: MediaQuery.of(context).size.width / 1),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Join our growing community of 3 Idiots travelers.",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: controller.formkey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: controller.name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter Your Name";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                hintText: 'Enter your name',
                                prefixIcon: const Icon(Icons.person_pin,size: 30,),
                                labelStyle: const TextStyle(color: Colors.black),
                                labelText: 'Name'),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: TextFormField(
                            controller: controller.userName,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Username required";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                hintText: 'Enter Username',
                                prefixIcon: const Icon(Iconsax.user),
                                labelStyle: const TextStyle(color: Colors.black),
                                labelText: 'Username'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.email,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Your Email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Enter email address',
                          prefixIcon: const Icon(Icons.email_outlined),
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
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Enter your password',
                            prefixIcon: const Icon(Icons.lock_outline),
                            labelStyle: const TextStyle(color: Colors.black),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  controller.isShowPassword.value =
                                      !controller.isShowPassword.value;
                                },
                                icon: controller.isShowPassword.value
                                    ? Icon(Iconsax.eye_slash)
                                    : Icon(Iconsax.eye)),
                            labelText: 'Password'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                ()=> Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(value: controller.isPrivacyAccepted.value, onChanged: (value) {
                      controller.isPrivacyAccepted.value=value!;
                    }),
                    const Text(
                      "Agree",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Trems of Service",
                          style: TextStyle(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.w500),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () async {
                    if (controller.formkey.currentState!.validate()) {
                      controller.signUpWithEmailAndPassword();
                    }
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.blue[800],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.blue[800],
                            fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
