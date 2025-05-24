


import 'package:flutter/material.dart';
import 'package:restaurentmanagement/widgets/stylling.dart';

AppBar appBar(context,{bool isAppleTitle = false, String titleText="",bool removeBackBtn = false}){
  return AppBar(
  automaticallyImplyLeading: removeBackBtn ? false : true,
    title: Text(isAppleTitle ? "Restaurent" : titleText ,style: TextStyle(
      color: Colors.white,
      fontSize: isAppleTitle ? 40 : 19
    ),


      ),
    backgroundColor: Theme.of(context).primaryColor,
    centerTitle: true,
  );
}