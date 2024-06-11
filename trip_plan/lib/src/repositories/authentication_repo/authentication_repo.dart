import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

import '../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../utils/exceptions/firebase_exceptions.dart';
import '../../utils/exceptions/format_exceptions.dart';
import '../../utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository {
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

  Future<UserCredential> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      return await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
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
}
