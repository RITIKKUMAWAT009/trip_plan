import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_plan/src/screens/home/home_screen.dart';
import 'package:trip_plan/src/screens/my_trip/my_trips.dart';
import 'package:trip_plan/src/screens/profile/profile.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> AnimatedNotchBottomBar(
          showShadow: true,
          showBlurBottomBar: true,
          showTopRadius: true,
          textOverflow: TextOverflow.ellipsis,
          elevation: 5,durationInMilliSeconds: 5,
          kBottomRadius: 5,
          circleMargin: 1,
          blurOpacity: 1,
          kIconSize: 20,
          notchGradient: RadialGradient(colors: [
            Colors.blue.shade200,
            Colors.blue.shade500,
            Colors.blue.shade800,
          ]),
          itemLabelStyle: TextStyle(color: Colors.white),
          showLabel: true,
          maxLine: 1,
          bottomBarHeight: 34,
          color: Colors.blue.shade800,
          onTap: (value) => controller.selectedIndex.value = value,
          bottomBarItems: const [
            BottomBarItem(
                itemLabel: "Home",
                inActiveItem: Icon(Icons.home,color: Colors.white,),
                activeItem: Icon(Icons.home,color: Colors.white,)),
            BottomBarItem(
                itemLabel: "MyTrip",
                inActiveItem: Icon(Icons.umbrella,color: Colors.white,),
                activeItem: Icon(Icons.umbrella,color: Colors.white,)),
            BottomBarItem(
                itemLabel: "Profile",
                inActiveItem: Icon(Icons.person_pin,color: Colors.white,),
                activeItem: Icon(Icons.person_pin,color: Colors.white,)),
          ],
          notchBottomBarController:
              NotchBottomBarController(index: controller.selectedIndex.value),
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class BottomNavigationController extends GetxController {
  static BottomNavigationController get instance=>Get.find();
  RxInt selectedIndex = 0.obs;
  List<Widget> screen = [
    const HomeScreen(),
    const MyTripsScreen(),
    const ProfileScreen(),
  ];
}
