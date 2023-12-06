import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class AuthMethods{
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore =FirebaseFirestore.instance;
  signUpuser({
    required String email,
    required String username,
    required String password,
    required String bio,
    required Uint8List file,
}) async{
    String res ="some error occurred";
    try{
      if(email.isNotEmpty||username.isNotEmpty||password.isNotEmpty||bio.isNotEmpty||file!=null){
        UserCredential cred =await auth.createUserWithEmailAndPassword(email:  email, password: password);
      }
    }catch(err){
      res =err.toString();
    }
    return res;
  }
}