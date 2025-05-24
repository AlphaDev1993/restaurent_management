


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurentmanagement/pages/login_screen.dart';

class AuthServiceView{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;



  Future<String>loginUser({required String email,required String password})async{
    String res = "Some error occured!";
    try{

      if(email.isNotEmpty || password.isNotEmpty){
        await _auth.signInWithEmailAndPassword(email: email, password: password);
        res = "Success";
      }

    }catch(e){
      print(e.toString());
    }
    return res;
}


Future<void>signOut(BuildContext context)async{
    await _auth.signOut();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginScreen()));
}
}