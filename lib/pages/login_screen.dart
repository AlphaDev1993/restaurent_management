



import 'package:flutter/material.dart';
import 'package:restaurentmanagement/pages/forgot_ps_page.dart';

import '../widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController psCtrl = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
    backgroundColor: Colors.white,
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //add image
          SizedBox(
            height: height/3.8,
            child: Image.asset("images/server.png"),
          ),

          TextFieldInput(
            textEditingController: emailCtrl,
            hintText: "Enter your email!",
            icon: Icons.email,
          ),
          TextFieldInput(
            textEditingController: psCtrl,
            hintText: "Enter your password!",
            isPass: true,
            icon: Icons.security,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ForgotPasswordPage()));
                },
                child: Text("Forget passwords?",style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),),
              ),
            ),
          )

        ],
      )),
    );
  }
}
