import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:trip_plan/src/bottom_navigation/bottom_navigation.dart';
import 'package:trip_plan/src/firebase_firestore_db/firebase_db.dart';
import 'package:trip_plan/src/models/user_model/user_model.dart';
import 'package:trip_plan/src/screens/Sign-up/sign_up_screen.dart';
import 'package:trip_plan/src/screens/home/home_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trip_plan/src/screens/login/login_screen.dart';
import 'package:trip_plan/src/screens/onboarding/onboarding_screen.dart';

import '../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../utils/exceptions/firebase_exceptions.dart';
import '../../utils/exceptions/format_exceptions.dart';
import '../../utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController{

  @override
  void onReady() {
    super.onReady();
screenRedirect();
  }
final _auth=FirebaseAuth.instance;
  final localStorage=GetStorage();
   GetStorage get storageInstance=>localStorage;
  screenRedirect(){
    final user=_auth.currentUser;
    if(user!=null){
      Get.offAll(BottomNavigation());
    }else{
      localStorage.writeIfNull('isFirstTime', true);
      localStorage.read('isFirstTime')==true?
      Get.to(OnBoardingScreen()):
      Get.to(LoginScreen());

    }
  }


  signin(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print('FAE>>>>>' + e.code);
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      print('FE>>>>>' + e.code);

      throw TFirebaseException(e.code).message;
    } on FormatException catch (e) {
      // print(e.code);

      throw const FormatException();
    } on PlatformException catch (e) {
      print('pfE>>>>: ' + e.code);
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong';
    }
  }

  Future<void> signUpWithEmailAndPassword(String name, String email, String password,String userName) async {
    try {
      var userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      UserModel user= UserModel(name: name, email: email, uId: userCredential.user!.uid,userName: userName);

      FirebaseDatabase.storeUserData(user);


    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong';
    }
  }

  logoutUser()async{
    try{
      await _auth.signOut();
      Get.offAll(LoginScreen());
    }catch(e){
      throw 'Something went wrong. Please try again';
    }
  }
}
