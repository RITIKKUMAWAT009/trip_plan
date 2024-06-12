import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trip_plan/src/models/trip_model/trip_model.dart';

class MyTripController extends GetxController{
  static MyTripController get instance=>Get.find();

  final localStorage=GetStorage();

  RxBool isWishlistSelected=false.obs;
  RxBool isItinerarySelected=true.obs;

  RxList<TripModel> myTripList = <TripModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit

    saveTripDataToLocalStorage();
  }
  void readDataFromLocalStorage (){
    try{
      print("inside my tc>>>>>.");
      var list =  localStorage.read("TripList");
      print("after callling local storage.rread tc>>>>>.");
      print( "List data--------"+ list.toString());
    }catch(e) {
      print(e);
    }
  }

  void saveTripDataToLocalStorage(){
   try{
     print("inside callling local storage.writte tc>>>>>.");
      localStorage.write("TripList", myTripList);
     print("after callling local storage.write tc>>>>>.");
     readDataFromLocalStorage();
   }
   catch(e){
     print(e);
   }
  }
}