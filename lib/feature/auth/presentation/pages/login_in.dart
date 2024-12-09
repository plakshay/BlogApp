import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_pallete.dart';
import 'package:flutter_application_1/feature/auth/presentation/pages/sign_up.dart';
import 'package:flutter_application_1/feature/auth/presentation/widgets/auth_field.dart';
import 'package:flutter_application_1/feature/auth/presentation/widgets/auth_gradient_button.dart';

class LoginInPage extends StatefulWidget {
  static route ()=>MaterialPageRoute(
                    builder: (context) => LoginInPage()
                    );
  const LoginInPage({super.key});

  @override
  State<LoginInPage> createState() => _LoginInPageState();
}

class _LoginInPageState extends State<LoginInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController(); 
  final nameController = TextEditingController(); //when the textediting controller is made, it is needed to be disposed off 

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose(); // super dispose - flutter disposes rest of the remaining stuff
  }

  // these email controllers are to be attached to the authfield

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Sign In.",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(
                height: 30,
              ),
               
              AuthField(
                hintText: 'Email', 
                controller: emailController,
                ),
              const SizedBox(
                height: 15,
              ),
               AuthField(
                hintText: 'Password', 
                controller: passwordController, 
                isobsecureText: true,
                ),
              const SizedBox(
                height: 20,
              ),
              const AuthGradientButton(x:'Login'),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, 
                  SignUpPage.route(),
                    
                    );
                },
                child: RichText( // rich text allopws to write 2 texts in same line
                  text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppPallete.gradient2,
                        fontWeight: FontWeight.bold
                      ),
                      
                    )
                  ]
                ),
                ),
              ),
              
            ],
          ),
        ),
      )
    );
  }
}