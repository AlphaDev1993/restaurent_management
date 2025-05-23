



import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {

  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final IconData? icon;
  //
  const TextFieldInput({super.key, required this.textEditingController,  this.isPass= false, required this.hintText, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 9),
      child: TextField(
      obscureText: isPass,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black45,
            fontSize: 16,
          ),
          prefixIcon: Icon(icon,color: Colors.black45,),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          filled: true,
          fillColor: Color(0xFFedf0f8),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: Colors.blue),
            borderRadius: BorderRadius.circular(30)
          )
        ),


      ),
    );
  }
}
