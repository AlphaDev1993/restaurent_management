



import 'package:flutter/material.dart';
import 'package:restaurentmanagement/pages/login_screen.dart';
import 'package:restaurentmanagement/widgets/header.dart';

import '../widgets/buttons.dart';
import '../widgets/text_field_input.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController emailCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
     // appBar: appBar(context,isAppleTitle: false,titleText: "Reset your password!"),

      backgroundColor: Colors.white,
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //add image
            SizedBox(
              height: height/3.8,
              child: Image.asset("assets/images/server.png"),
            ),
            SizedBox(height: 15,),
            Text("Reset your password",style: TextStyle(
              fontSize: 25,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 15,),
            TextFieldInput(
              textEditingController: emailCtrl,
              hintText: "Enter your email!",
              icon: Icons.email,
            ),



            MyButton(onTap: (){}, text: "Reset Password"),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },
                  child: Text("Go to the login page",style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),),
                ),
              ),
            ),






          ],
        ),
      )),
    );
  }
}
