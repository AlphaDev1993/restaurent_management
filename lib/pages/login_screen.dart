



import 'package:flutter/material.dart';
import 'package:restaurentmanagement/pages/forgot_ps_page.dart';
import 'package:restaurentmanagement/pages/homepage.dart';
import 'package:restaurentmanagement/pages/sign_up.dart';
import 'package:restaurentmanagement/services/authentication.dart';
import 'package:restaurentmanagement/widgets/buttons.dart';
import 'package:restaurentmanagement/widgets/progress.dart';
import 'package:restaurentmanagement/widgets/show_snackbar.dart';

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

  void loginUser()async{
    setState(() {
      isLoading = true;
    });
    String res = await AuthServiceView().loginUser(email: emailCtrl.text, password: psCtrl.text);
    if(res == "Success"){

        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Homepage()));
    }else{
      setState(() {
        isLoading = false;
      });
    }

    showSnackBar(context, res);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailCtrl.dispose();
    psCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
    backgroundColor: Colors.white,
      body: isLoading ? circularProgress() : buildSafeArea(height, context),
    );
  }

  SafeArea buildSafeArea(double height, BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //add image
          SizedBox(
            height: height/3.8,
            child: Image.asset("assets/images/server.png"),
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
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> ForgotPasswordPage()));
                },
                child: Text("Forgot passwords?",style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),),
              ),
            ),
          ),

          MyButton(onTap: loginUser, text: "Login"),


          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Don't have an account?",style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                ),),

                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                      MySignUp()
                    ));
                  },
                  child: Text(" Signup",style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Signatra'
                  ),),
                )
              ],
            ),
          )

        ],
      ),
    ));
  }


}
