import 'package:trip_plan/src/models/user_model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseDatabase{
  
  static storeUserData(UserModel user)async{
    try{
      final _database=FirebaseFirestore.instance;
      await _database.collection('Users').doc(user.uId).set(user.toJson());
      print('stored successfully');
    }catch(e){
      print(e);
    }
    
  }
}