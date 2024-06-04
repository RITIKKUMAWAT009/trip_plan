import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        title: const Text('Login to Trip World'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
          child: Column(
            children: [
              Lottie.asset('assets/animation/login.json',
                  height: MediaQuery.of(context).size.height / 3 - 50,
                  width: MediaQuery.of(context).size.width / 1),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Enter email address',
                        prefixIcon: Icon(Icons.email),
                        labelStyle: TextStyle(color: Colors.black),
                        labelText: 'Email'),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Enter your password',
                        prefixIcon: Icon(Icons.email),
                        labelStyle: TextStyle(color: Colors.black),
                        labelText: 'Password'),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
