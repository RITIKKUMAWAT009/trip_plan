import 'package:get/get.dart';
import 'package:trip_plan/src/controller/user_controller/user_controller.dart';

class HomeController extends GetxController{
  //this is a object of UserController class
  final _userController=Get.put(UserController());
 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _userController.getUserData();
  }
}