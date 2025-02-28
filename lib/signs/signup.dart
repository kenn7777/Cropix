//import 'dart:developer';

import 'package:cropix/authentication/auth.dart';
import 'package:cropix/components/button.dart';
import 'package:cropix/components/field.dart';
import 'package:cropix/components/loading.dart';
import 'package:cropix/components/tile.dart';
import 'package:cropix/firebase/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';





class SignUp extends StatefulWidget {

  final void Function()? onTap;

  const SignUp({super.key, required this.onTap});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  //access auth and firebase

  final _auth = Auth();
  final _service = FirebaseService();


  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();


  //sign in method
  void SignUserUp() async {
    //password match
    if (passwordController.text == confirmpasswordController.text) {
      //loading
      Loading(context);

      //attempt to sign up new user
      try {
        await _auth.signupEmailPassword(
            emailController.text, passwordController.text);

        //finished loading ...
        if (mounted) UnLoading(context);


        //once registered, create and save user profile in firebase
        await _service.SaveUserInfoInFirebase(
            name: emailController.text, email: passwordController.text);

        //

      }


      catch (e) {
        if (mounted) UnLoading(context);

        //let user know error
        if (mounted) {
          showDialog(context: context, builder: (context) =>
              AlertDialog(
                title: Text(e.toString()),
              ),
          );
        }
      }
    }
    // password dont mathc -- error
    else {
      showDialog(context: context, builder: (context) =>
      const AlertDialog(
        title: Text("Password don't match"),
      ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView( // Wrap in SingleChildScrollView
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 17),

                // Logo
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('images/iconcropix.svg', height: 77),
                  ],
                ),

                const SizedBox(height: 24),

                  Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF3D550C),
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                ),

                const SizedBox(height: 24),

                // Username field
                Field(
                  controller: nameController,
                  obscureText: false,
                  labelText: 'Name',
                ),

                const SizedBox(height: 14),

                Field(
                  controller: emailController,
                  obscureText: false,
                  labelText: 'Email',
                ),

                const SizedBox(height: 14),

                Field(
                  controller: passwordController,
                  obscureText: true,
                  labelText: 'Password',
                ),

                const SizedBox(height: 14),

                Field(
                  controller: confirmpasswordController,
                  obscureText: true,
                  labelText: 'Confirm Password',
                ),

                const SizedBox(height: 14),

                // Forgot password
               /* const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFF3D550C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),*/

                const SizedBox(height: 14),

                SignUpButton(
                  onTap: SignUserUp,
                ),

                const SizedBox(height: 44),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'or continue with',
                          style: GoogleFonts.poppins(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 44),

                // Sign in with logos
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Tile(
                      onTap: () => Auth().signInWithGoogle(),
                      imagePath: 'images/Google.png',
                    ),
                    // Uncomment if you want to add Apple sign-in
                    // const SizedBox(width: 44),
                    // Tile(onTap: () => Auth().signInWithApple(), imagePath: 'images/Apple Logo.png',)
                  ],
                ),

                const SizedBox(height: 44),

                // Not a member?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?', style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child:  Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF3D550C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





















