import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/env/app_env.dart';
import 'package:flutter_application_1/core/theme/theme.dart';
import 'package:flutter_application_1/feature/auth/presentation/pages/login_in.dart';
import 'package:flutter_application_1/feature/auth/presentation/pages/sign_up.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{ // this is made async as it will fetch data from supabase || initialise suapase requires await
WidgetsFlutterBinding.ensureInitialized(); // this is automatically run at runApp, but needs to be called if calling anything else before runApp
  final supabase = await Supabase.initialize(url: AppEnv.supabaseUrl, anonKey: AppEnv.supabaseAnonKey );
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
      home: LoginInPage(),
    );
  }
}