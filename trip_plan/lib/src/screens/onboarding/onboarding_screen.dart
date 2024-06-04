
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_plan/src/screens/onboarding/widgets/on_boarding_dot_nav.dart';
import 'package:trip_plan/src/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:trip_plan/src/screens/onboarding/widgets/on_boarding_page.dart';
import 'package:trip_plan/src/screens/onboarding/widgets/on_boarding_skip_button.dart';

import '../../controller/onboarding_controller/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title:'Welcome to Your Ultimate Trip Planner',
                subTitle: 'Plan, explore, and enjoy your journey with ease.',
                onBoardingImage: 'assets/animation/world_airoplan.json',
              ),
              OnBoardingPage(
                title:' Tailor Your Experience',
                subTitle:'Set your preferences to get personalized recommendations.',
                onBoardingImage: 'assets/animation/location.json',
              ),
              OnBoardingPage(
                title: 'Plan Effortlessly',
                subTitle:'Organize your itinerary, bookings, and activities in one place',
                onBoardingImage: "assets/animation/car_go.json",
              ),
            ],
          ),
          //skip button
          const OnBoardingSkip(),
          //Dot navigation SmoothIndicator
          const OnBoardingDotNavigation(),

          const OnBoardingNextButton(),

        ],
      ),
    );
  }
}


