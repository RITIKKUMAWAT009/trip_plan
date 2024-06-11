
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trip_plan/src/models/user_model/user_model.dart';

class UserRepository{

  final _database=FirebaseFirestore.instance;
  final _auth=FirebaseAuth.instance;
  final UserModel user=UserModel(name: '', email: '', uId: '', userName: '');
  Future<UserModel> getUserData()async{
    try{
      var documentSnapshot = await _database.collection('Users').doc(_auth.currentUser!.uid).get();
      print(documentSnapshot.get('name'));
      var fromJson = user.fromJson(documentSnapshot.data()!);
      return fromJson;
    }catch(e){
    print(e);
    return user;
    }
  }

}