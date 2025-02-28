import 'package:cropix/authentication/auth.dart';
import 'package:cropix/components/button.dart';
import 'package:cropix/components/loading.dart';
import 'package:cropix/components/tile.dart';
import 'package:cropix/pages/forgotpassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/field.dart';


//access auth

final _auth = Auth();


class SignIn extends StatefulWidget {


  final void Function()? onTap;

  const SignIn({super.key, required this.onTap});


  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();



//sign in method
  void  SignUserIn() async {

    //loading icon
    Loading(context);

    try {
      // signing in
      await _auth.signinEmailPassword(emailController.text, passwordController.text);

      //finished loading
      if(mounted) UnLoading(context);


    }
    catch (e) {

      if(mounted) UnLoading(context);

      if (mounted) {
        showDialog(context: context, builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
        );
      }
      else {
        showDialog(context: context, builder: (context) => const AlertDialog(
          title: Text("Invalid Credentials"),
        ),
        );

      }

    }




  }

























  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView( // Add this line
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // LOGO
                const SizedBox(height: 44),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('images/iconcropix.svg', height: 77),
                  ],

                   //children: [
                  //  Image.asset('images/iconcropix.png', height: 147),
                 // ],
                ),
                const SizedBox(height: 47),

                // CROPIX
                 Text(
                  'Sign In',
                    style: GoogleFonts.poppins(
                      fontSize: 27, 
                       fontWeight: FontWeight.bold,
                        color: const Color(0xFF3D550C)
                        ),
                ),

                const SizedBox(height: 24),

                // USERNAME TEXTFIELD
                Field(
                  controller: emailController,
                  obscureText: false,
                  labelText: 'Email',
                ),

                const SizedBox(height: 14),

                // PASSWORD TEXT FIELD
                Field(
                  controller: passwordController,
                  obscureText: true,
                  labelText: 'Password',
                ),

                const SizedBox(height: 14),

                // FORGOT PASSWORD?
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                           return const ForgotPassword();
                          },),);
                          },
                        child:  Text(
                          'Forgot Password?',
                          style: GoogleFonts.poppins(
                           fontSize: 14, 
                          fontWeight: FontWeight.w400,
                        color:  const Color(0xFF3D550C)
                        ),
                        ),
                            
                
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // SIGN IN BTN
                SignInButton(
                  onTap: SignUserIn,
                ),

                const SizedBox(height: 44),

                // CONTINUE WITH
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
                            style: GoogleFonts.poppins(
                          color:  Colors.grey[700]
                        ), 
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
                const SizedBox(height: 24),

                // GOOGLE & APPLE
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Tile(
                      onTap: () => Auth().signInWithGoogle(),
                      imagePath: 'images/Google.png',
                    ),
                    // const SizedBox(width: 44,),
                    // Tile(onTap: () => Auth().signInWithGoogle(), imagePath: 'images/Apple Logo.png',)
                  ],
                ),
                const SizedBox(height: 44),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?',  style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ), ),
                        
                    const SizedBox(width: 4),
                    
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Sign Up',
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
  }}
