

import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  final String userid,username,email;
  final String bio;
  final String phone;
  final String rank;
  final String regDate;
final String permitDate;
final restaurentName;
final String rsId;

  User({required this.userid, required this.username, required this.email, required this.bio, required this.phone, required this.rank,
      required this.regDate, required this.permitDate, this.restaurentName, required this.rsId});


  factory User.fromDocument(DocumentSnapshot doc){
    return User(
      userid : doc['userid'],
      username : doc['username'],
      email : doc['email'],
    bio : doc['bio'],
    phone : doc['phone'],
    rank : doc['rank'],
    regDate : doc['rank'].toString(),
    permitDate : doc['permitDate'],
    restaurentName : doc['restaurentName'],
    rsId : doc['rsId']
    );
  }

}