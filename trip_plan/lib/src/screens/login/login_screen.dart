import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:trip_plan/src/screens/Sign-up/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
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
                child: Column(
                  children: [
                    TextFormField(
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
                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Enter your password',
                          suffixIcon: const Icon(Iconsax.eye_slash),
                          prefixIcon: const Icon(Icons.lock),
                          labelStyle: const TextStyle(color: Colors.black),
                          labelText: 'Password'),
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

                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      foregroundColor: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                const Text("Don't have an account?"),
                TextButton(
                  child: const Text(
                    'SignUp',
                  ),
                  onPressed: () {
                    Get.to(()=>SignUPSccreen());
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
