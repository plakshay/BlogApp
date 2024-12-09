import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller; // TextEditingController type of variable intialised
  final bool isobsecureText; // all the fields here are to be initialised inside the constructor
  const AuthField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isobsecureText = false,
    
    });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        if(value!.isEmpty){
          return "$hintText is missing!";
        }
        else{
          return null;
        }
      },
      obscureText: isobsecureText,
    );
  }
}