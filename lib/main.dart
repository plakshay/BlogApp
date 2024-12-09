import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/theme.dart';
import 'package:flutter_application_1/feature/auth/presentation/pages/sign_up.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkThemeMode,
      debugShowCheckedModeBanner: false ,
      title: 'Blog App',
      home: SignUpPage(),
    );
  }
}