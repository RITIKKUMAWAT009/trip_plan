import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:trip_plan/src/services/firebase_storage_service.dart';

import '../../models/trip_model/trip_model.dart';
import '../../utils/exceptions/firebase_exceptions.dart';
import '../../utils/exceptions/platform_exceptions.dart';

class TripRepository{
final _db=FirebaseFirestore.instance;
  Future<void>uploadDummyData(List<TripModel> tripPlaces)async{
    try{
      final firebaseStorageService=Get.put(FirebaseStorageService());
      for(var tripPlace in tripPlaces){
        var file=await firebaseStorageService.getImageDataFromAssets(tripPlace.imageUrl);
      var url = await firebaseStorageService.uploadImageData('TripPlaces', file, tripPlace.placeName);
      tripPlace.imageUrl=url;
      _db.collection('TripPlaces').doc(tripPlace.placeId).set(tripPlace.toJson());
      }
    }on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    }on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    }catch(e){
      throw 'Something went wrong. Please try again';
    }
  }

  Future<List<TripModel>> fetchAllTripPlaces()async{
    try{
      //first and short way to read data from querySnapShot
      var querySnapshot = await _db.collection('TripPlaces').get();
      var list = querySnapshot.docs.map((singlePlace) =>TripModel.formJson(singlePlace.data())).toList();
      //second and long way to read data from querySnapShot
      // List<TripModel> list=[];
      // for(var singePlace in querySnapshot.docs){
      //   TripModel tripData=TripModel.formJson(singePlace.data());
      //   list.add(tripData);
      // }
      return list;
    }on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    }on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    }catch(e){
      print(e);
      throw 'Something went wrong. Please try again';
    }
  }
}