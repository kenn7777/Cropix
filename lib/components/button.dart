import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



 class SignUpButton extends StatelessWidget {

   final Function()? onTap;

   const SignUpButton({super.key, required this.onTap});
 
   @override
   Widget build(BuildContext context) {
     return GestureDetector(
       onTap: onTap,
       child: Container(
         padding: const EdgeInsets.all(17),
         margin: const EdgeInsets.symmetric(horizontal: 25),
         decoration: BoxDecoration(color: const Color(0xFF3D550C), borderRadius: BorderRadius.circular(7)),
         child:  Center(
           child: Text('Sign Up',style: GoogleFonts.poppins(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
       
         ),
       ),
     );
   }
 }


class SignInButton extends StatelessWidget {

  final Function()? onTap;

  const SignInButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(17),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: const Color(0xFF3D550C), borderRadius: BorderRadius.circular(7)),
        child: Center(
          child: Text('Sign In',style: GoogleFonts.poppins(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),

        ),
      ),
    );
  }
}
































class ImageButton extends StatelessWidget {

   final Function()? onTap;

   const ImageButton({super.key, required this.onTap});
 
   @override
   Widget build(BuildContext context) {
     return GestureDetector(
       onTap: onTap,
       child: Container(
         padding: const EdgeInsets.all(12),
         margin: const EdgeInsets.symmetric(horizontal: 144),
         decoration: BoxDecoration( color: const Color(0xFF3D550C),  borderRadius: BorderRadius.circular(7)),
         child: const Center(
           child: Icon(
             Icons.camera_alt,
             color: Color(0xFFFFFFFF),
              size: 27,
             // color: Theme.of(context).colorScheme.primary,
           ),
         ),
       ),
     );
   }
 }




















class ForgotPasswordButton extends StatelessWidget {

  final Function()? onTap;

  const ForgotPasswordButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(17),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: const Color(0xFF3D550C), borderRadius: BorderRadius.circular(7)),
        child:  Center(
          child: Text('Reset Password',style: GoogleFonts.poppins(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),

        ),
      ),
    );
  }
}
