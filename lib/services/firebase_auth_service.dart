import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

enum UserStatus{empty, notEmpty}

class FirebaseAuthService{

  final FirebaseAuth _firebaseAuth;

  FirebaseAuthService({
    FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;


  Future<bool>? isSignedin() async{
    User? user =  _firebaseAuth.currentUser;
    return user != null;
  }

  Future<User> signinAnonymously() async{
    UserCredential userCredential = await _firebaseAuth.signInAnonymously();
    return userCredential.user!;
  }
}