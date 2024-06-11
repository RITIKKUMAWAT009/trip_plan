
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trip_plan/src/bottom_navigation/bottom_navigation.dart';

import '../../screens/login/login_screen.dart';
class OnBoardingController extends GetxController{

  static OnBoardingController get instance=>Get.find();
  ///Variables
  final pageController=PageController();
  Rx<int> currentPageIndex=0.obs;


  ///Update current index with page scroll
  void updatePageIndicator(index)=>currentPageIndex.value=index;
  //jump to specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value=index;
    pageController.jumpToPage(currentPageIndex.value);
  }
  //update current index & jump to next page
  void nextPage(){
    if(currentPageIndex.value==2){
      Get.offAll(LoginScreen());
    }else{
      int page=currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }
  }
  //update current index & jump to last page
  void skipPage(){
    currentPageIndex.value=2;
    pageController.jumpToPage(2);
  }
}