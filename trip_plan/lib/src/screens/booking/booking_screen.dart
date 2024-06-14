
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trip_plan/src/screens/booking/show_traveler_detail.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book my trip'),
      backgroundColor: Colors.blue.shade800,foregroundColor: Colors.white,),
      body: SingleChildScrollView(
        child:   Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
          child: Form(
            // key: controller.formkey,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        // controller: controller.name,
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
                        // controller: controller.userName,
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
                  // controller: controller.email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Email',
                      prefixIcon: const Icon(Icons.email_outlined),
                      labelStyle: const TextStyle(color: Colors.black),
                      labelText: 'Email'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // controller: controller.email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Phone required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Phone',
                      prefixIcon: const Icon(Icons.email_outlined),
                      labelStyle: const TextStyle(color: Colors.black),
                      labelText: 'Phone'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        // controller: controller.name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Street required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Street',
                            prefixIcon: const Icon(Icons.person_pin,size: 30,),
                            labelStyle: const TextStyle(color: Colors.black),
                            labelText: 'Street'),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextFormField(
                        // controller: controller.userName,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "City required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'City',
                            prefixIcon: const Icon(Iconsax.user),
                            labelStyle: const TextStyle(color: Colors.black),
                            labelText: 'City'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        // controller: controller.name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "State required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'State',
                            prefixIcon: const Icon(Icons.person_pin,size: 30,),
                            labelStyle: const TextStyle(color: Colors.black),
                            labelText: 'State'),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextFormField(
                        // controller: controller.userName,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "PinCode required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Pin',
                            prefixIcon: const Icon(Iconsax.user),
                            labelStyle: const TextStyle(color: Colors.black),
                            labelText: 'Pin'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),

                 SizedBox(
                  width: MediaQuery.of(context).size.width,
                   height: 50,
                   child: ElevatedButton(onPressed: (){
                     Get.to(()=>ShowTravelerDetails());
                   },child: Text('Save'),
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade800,foregroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
