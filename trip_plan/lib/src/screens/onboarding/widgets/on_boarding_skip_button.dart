import 'package:flutter/material.dart';

import '../../../controller/onboarding_controller/onboarding_controller.dart';
class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 40,
        right: 8,
        child: TextButton(
          onPressed: ()=>OnBoardingController.instance.skipPage(),
          child: Text(
            'Skip',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ));
  }
}
