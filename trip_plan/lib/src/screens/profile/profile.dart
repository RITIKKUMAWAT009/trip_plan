import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_plan/src/common/widgets/custom_shape_container.dart';
import 'package:trip_plan/src/common/widgets/heading_text.dart';
import 'package:trip_plan/src/controller/trip_controller/trip_controller.dart';
import 'package:trip_plan/src/controller/user_controller/user_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.put(UserController());
    final tripController=Get.put(TripController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Profile'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.black,
                  size: 30,
                )),
          )
        ],
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              CurvedEdgesWidget(
                child: Container(
                  padding: const EdgeInsets.only(
                      bottom: 50, top: 20, left: 50, right: 50),
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.blue),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img.png'),
                  ),
                ),
              ),
              HeadingText(
                  title: 'Name :',
                  subTitle: userController.userModel.value.name),
              const SizedBox(
                height: 20,
              ),
              HeadingText(
                  title: 'Email :',
                  subTitle: userController.userModel.value.email),
              const SizedBox(
                height: 20,
              ),
              HeadingText(
                  title: 'Username :',
                  subTitle: userController.userModel.value.userName),
              const SizedBox(
                height: 20,
              ),
              const HeadingText(title: 'Contact :', subTitle: '1234590934'),
              const SizedBox(
                height: 20,
              ),
              const HeadingText(title: 'Address :', subTitle: 'Mohali Punjab'),
              const SizedBox(
                height: 20,
              ),
              // HeadingText(title: 'UID :', subTitle:userController.userModel.value.uId ),
              const SizedBox(height: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width - 30,
                child: ElevatedButton(
                  onPressed: () {
                    userController.logoutUser();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade800,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Logout'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 30,
                child: ElevatedButton(
                  onPressed: () {
                    tripController.uploadDummyData();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade300,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Upload data'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 30,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade300,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Delete Account'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
