import 'package:get/get.dart';
import 'package:trip_plan/dummyData/dummy_data.dart';
import 'package:trip_plan/src/models/trip_model/trip_model.dart';
import 'package:trip_plan/src/repositories/trip_repo/trip_repo.dart';
import 'package:trip_plan/src/utils/Loaders/loaders.dart';

class TripController extends GetxController{
@override
  void onInit() {
    super.onInit();
   fetchAllTripPlaces();
  }
  final tripRepo=Get.put(TripRepository());

  RxList<TripModel>tripList=<TripModel>[].obs;

  Future<void>uploadDummyData()async{
    try{
      await tripRepo.uploadDummyData(DummyData.tripDummyData);
      Loaders.successfullySnackBar(title: 'Congrats', message: 'Data uploaded successfully');
    }catch(e){
      Loaders.errorSnackBar(title: 'Failed', message: 'Something went wrong');
    }
  }
fetchAllTripPlaces()async{
    try{
      // print('inside trip controller');
    var list = await tripRepo.fetchAllTripPlaces();
    tripList.assignAll(list);
      // print('after calling tripRepo.fetchAllTripPlaces();');
    // print('trip list ${tripList.value}');
    }catch(e){

      Loaders.warningSnackBar(title: 'Oh Snap', message: e);
    }
}

}