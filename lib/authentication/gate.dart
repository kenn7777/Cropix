import 'package:cropix/authentication/signinup.dart';
import 'package:cropix/pages/home.dart';
import 'package:cropix/onboardings/onboarding_view.dart';
import 'package:cropix/pages/navigation.dart';
import 'package:cropix/signs/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Gate Widget to handle navigation based on user's authentication state and onboarding status
class Gate extends StatelessWidget {
  const Gate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<bool>(
        // Check if onboarding flag is stored in shared preferences
        future: _isOnboardingCompleted(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While waiting for the future, show a loading screen
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasData && snapshot.data == true) {
            // If the user has completed onboarding
            return StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Show loading while checking authentication status
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasData) {
                  // User is signed in, navigate to Home
                  return const Home();
                } else {
                  // User is not signed in, show SignIn/SignUp screen
                  return const SignInUp();
                }
              },
            );
          } else {
            // If onboarding hasn't been completed, show OnboardingView
            return const OnBoardingView();
          }
        },
      ),
    );
  }

  // Check if the onboarding flag is set
  Future<bool> _isOnboardingCompleted() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('onboarding') ?? false;
  }
}
