import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class MyTripController extends GetxController{
  static MyTripController get instance=>Get.find();

  RxBool isWishlistSelected=false.obs;
  RxBool isItinerarySelected=true.obs;
}