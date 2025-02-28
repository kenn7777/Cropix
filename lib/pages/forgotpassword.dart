
import 'package:cropix/components/button.dart';
import 'package:cropix/components/field.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {


  final emailcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  Future resetpassword() async {
try{
  await FirebaseAuth.instance.sendPasswordResetEmail(email: emailcontroller.text.trim());
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('Password Reset Link Successfully Sent.',  style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3D550C),
          ),),
        );
      });

} on FirebaseAuthException catch (e) {
  print(e);
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(e.message.toString()),
        );
      });
}


  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3D550C),
          ),
        ),
        backgroundColor: Colors.grey[100],
      ),
      body: Column(
        children: [



          const SizedBox(height: 44),
          Text('Enter email to send  the password reset link.', style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3D550C),
          ),),

          const SizedBox(height: 44),
          Field(
            controller: emailcontroller,
            obscureText: false,
            labelText: 'Email',
          ),
          const SizedBox(height: 44),

          ForgotPasswordButton(onTap: resetpassword)








        ],
      ),








    );
  }
}
