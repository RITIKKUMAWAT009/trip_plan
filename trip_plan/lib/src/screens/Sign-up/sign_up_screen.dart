import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:trip_plan/src/screens/home/home_screen.dart';
import 'package:trip_plan/src/screens/login/login_screen.dart';

class SignUPSccreen extends StatelessWidget {
  const SignUPSccreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:  Text("Sign up to Trip World",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
              SizedBox(height: 20,),

              Text("Join our growing community of 3 Idiots travelers.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Enter your name',
                    prefixIcon: Icon(Iconsax.user),
                    labelStyle: TextStyle(color: Colors.black),
                    labelText: 'Name'),
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Enter email address',
                    prefixIcon: Icon(Icons.email_outlined),
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
                    prefixIcon: Icon(Icons.lock_outline),
                    labelStyle: TextStyle(color: Colors.black),
                    suffixIcon: Icon(Iconsax.eye_slash),
                    labelText: 'Password'),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text("Agree",style: TextStyle(fontWeight: FontWeight.w500),),
                  TextButton(onPressed: (){},
                      child: Text("Trems of Service",style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.w500),)),
                ],
              ),
              SizedBox(height: 40,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(onPressed: (){},
                    child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[800],),),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(fontWeight: FontWeight.w500),),
                  TextButton(onPressed: (){
                   // Get.back();
                    Get.to(()=>HomeScreen());
                  },
                  child: Text("Login",style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.w500),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
