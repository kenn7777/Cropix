// authentication in firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';



class Auth {

  final _auth = FirebaseAuth.instance;

  //get current user & uid

  User? getCurrentUser() => _auth.currentUser;
  String getCurrentUID() =>  _auth.currentUser!.uid;

  //sign in > email . pass

  Future<UserCredential> signinEmailPassword(String email, password) async {
    //attempt signin
    try{
      final userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);

      return userCredential;
    }
    // errors
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);

    }
  }

  // sign up method

  Future<UserCredential> signupEmailPassword(String email, password) async {
    // attempt to sign up new user
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      return userCredential;
    }

    on FirebaseAuthException catch (e) {

      throw Exception(e.code);

    }



  }


  Future<void> signout() async {
    await _auth.signOut();
  }













  // sign in google

  signInWithGoogle() async {

    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    //

    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    // new info

    final credential =  GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,

    );

    return await _auth.signInWithCredential(credential);

  }




}