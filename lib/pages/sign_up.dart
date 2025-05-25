import 'package:flutter/material.dart';
import 'package:restaurentmanagement/widgets/header.dart';
import 'package:restaurentmanagement/widgets/progress.dart';
import 'package:restaurentmanagement/widgets/text_field_input.dart';



class MySignUp extends StatefulWidget {
  const MySignUp({super.key});

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
 final TextEditingController usernameCtrl = TextEditingController();
 final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController psCtrl = TextEditingController();
  final TextEditingController bioCtrl= TextEditingController();
 final TextEditingController phoneCtrl = TextEditingController();
 final TextEditingController rankCtrl = TextEditingController();
 final TextEditingController resName = TextEditingController();
 bool isLoading = false;

 // timestamp
 // rank
 //rsId to create an id if no , select
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,titleText: "Signup",removeBackBtn: false),
      body: Column(
        children: [
          isLoading ? linearProgressbar() : Container(),
          TextFieldInput(textEditingController: usernameCtrl, hintText: "Enter Username",icon: Icons.ac_unit,),
          TextFieldInput(textEditingController: usernameCtrl, hintText: "Enter email",icon: Icons.email,)
        ],
      ),
    );
  }
}
