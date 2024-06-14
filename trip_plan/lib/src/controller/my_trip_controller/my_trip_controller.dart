import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trip_plan/dummyData/dummy_data.dart';
import 'package:trip_plan/src/models/trip_model/trip_model.dart';

class MyTripController extends GetxController{
  static MyTripController get instance=>Get.find();

  final localStorage=GetStorage();

  RxBool isWishlistSelected=false.obs;
  RxBool isItinerarySelected=true.obs;

  // RxList<TripModel> myTripList = <TripModel>[].obs;

// @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     readDataFromLocalStorage();
//   }
//
//   void readDataFromLocalStorage (){
//     try{
//       print("inside my tc>>>>>.");
//        List<dynamic> storedItems = localStorage.read<List<TripModel>>("TripList")??[];
//        myTripList.assignAll(storedItems.map((e) => TripModel.formJson(e)).toList());
//
//       // fr(var data in read){
//       //   if(!myTripList.contains(data)){
//       //     myTripList.add(TripModel.formJson(data));
//       //   }
//       // }
//       print( "after List data--------${myTripList.length}");
//
//     }catch(e) {
//       print(e);
//     }
//   }
//
//   void saveTripDataToLocalStorage(TripModel myTrip){
//    try{
//      myTripList.add(myTrip);
//      print("inside callling local storage.writte tc>>>>>.");
//      print(myTripList.length);
//       localStorage.write("TripList", myTripList.map((element) => element.toJson()).toList());
//      print("after callling local storage.write tc>>>>>.");
//
//    }
//    catch(e){
//      print(e);
//    }
//   }

   final GetStorage _storage = GetStorage();
  final RxList<TripModel> favoriteTrips = <TripModel>[].obs;

  @override
  void onInit() {
  super.onInit();
  List<dynamic> storedItems = _storage.read<List<dynamic>>('favorites') ?? [];
  favoriteTrips.assignAll(storedItems.map((e) => TripModel.formJson(e)).toList());
  }

  void addToFavorites(TripModel trip) {
  favoriteTrips.add(trip);
  _storage.write('favorites', favoriteTrips.map((e) => e.toJson()).toList());
  }

  void removeFromFavorites(TripModel trip) {
  favoriteTrips.remove(trip);
  _storage.write('favorites', favoriteTrips.map((e) => e.toJson()).toList());
  }

  bool isFavorite(TripModel trip) {
  return favoriteTrips.any((t) => t.placeId == trip.placeId);
  }
  }
