import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_pallete.dart';

class AuthGradientButton extends StatelessWidget {
  final String x;
  const AuthGradientButton({
    super.key,
    required this.x
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[
          AppPallete.gradient1,
          AppPallete.gradient2,
        ], ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(onPressed: () {
        
      }, 
      
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPallete.transparentColor,
        shadowColor: Colors.transparent,
        fixedSize: Size(395, 55),
      ),
      child:  Text(x,
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600
      ),),
      ),
    );
  }
}