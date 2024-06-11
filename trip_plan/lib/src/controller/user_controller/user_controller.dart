
import 'package:get/get.dart';
import 'package:trip_plan/src/models/user_model/user_model.dart';
import 'package:trip_plan/src/repositories/authentication_repo/authentication_repo.dart';
import 'package:trip_plan/src/repositories/user_repo/user_repo.dart';
import 'package:trip_plan/src/utils/Loaders/loaders.dart';

class UserController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print('inside usercon');
    getUserData();
  }
  //this is object of [UserRepository()] class
UserRepository userRepository=Get.put(UserRepository());
  final AuthenticationRepository _authRepo=Get.put(AuthenticationRepository());

//this a variable of UserModel type
Rx<UserModel> userModel=UserModel(name: '', email: '', uId: '', userName: '').obs;

//this a methode for calling data from repository class
getUserData()async{
  try{
     userModel.value = await userRepository.getUserData();
     print(userModel.value.email);
  }catch(e){
    print(e);
  }
}

logoutUser()async{
  try{
    await _authRepo.logoutUser();
    Loaders.successfullySnackBar(title: 'Hi there', message: 'Logout successfully');
  }catch(e){
    Loaders.errorSnackBar(title: 'Oh Snap', message: e);
  }
}
}