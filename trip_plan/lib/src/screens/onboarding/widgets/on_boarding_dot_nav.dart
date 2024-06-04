
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../controller/onboarding_controller/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Positioned(
        bottom: MediaQuery.of(context).size.height/4,
left: MediaQuery.of(context).size.width/2-50,

        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? Colors.blue : Colors.blue[800]!,
              dotHeight: 6),
        ));
  }
}
