import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../controller/onboarding_controller/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark=Theme.of(context).brightness == Brightness.dark;
    return Positioned(
        right:1,
        bottom:100,
        left: 1,
        child:  ElevatedButton(
          style:ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor:isDark? Colors.blue:Colors.blue[800] ),
          onPressed: ()=>OnBoardingController.instance.nextPage(),child:  const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Iconsax.arrow_right_34 ,color: Colors.white,size: 40,),
          ),));
  }
}
