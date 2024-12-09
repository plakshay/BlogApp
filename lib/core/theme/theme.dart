import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_pallete.dart';

class AppTheme{
  static  _border([Color color=AppPallete.borderColor]) =>OutlineInputBorder( // enabled border works only when not clicking on anything
        borderSide: BorderSide(
          color: color,
          width: 3
        ),
        borderRadius: BorderRadius.circular(10),
      ); 
  static final darkThemeMode =ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(21),
      enabledBorder: _border(),
        focusedBorder: _border(AppPallete.gradient2),
      )
    );
}