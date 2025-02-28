import 'package:cropix/signs/signin.dart';
import 'package:cropix/signs/signup.dart';
import 'package:flutter/material.dart';


class SignInUp extends StatefulWidget {
  const SignInUp({super.key});

  @override
  State<SignInUp> createState() => _SignInUpState();
}

class _SignInUpState extends State<SignInUp> {
  // initially, show sign in page
  bool showSignIn = true;

  //toogle between sign in and sign up

  void togglePages() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }




  @override
  Widget build(BuildContext context) {

    if(showSignIn) {
      return SignIn(onTap: togglePages,);
    }else {
      return SignUp(onTap: togglePages,);
    }
  }
}
