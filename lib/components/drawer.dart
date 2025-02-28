import 'package:cropix/authentication/auth.dart';
import 'package:cropix/components/tile.dart';
import 'package:cropix/firebase/provider.dart';
import 'package:cropix/pages/track.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DrawerSide extends StatefulWidget {
  const DrawerSide({super.key});

  @override
  _DrawerSideState createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  // Access auth
  final _auth = Auth();
  late final firebaseProvider = Provider.of<FirebaseProvider>(context, listen: false);

  // User info
  String currentUserID = '';
  String name = '';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    currentUserID = _auth.getCurrentUID();
    loadUserProfile();
  }

  // Fetch user profile data
  Future<void> loadUserProfile() async {
    try {
      var userProfile = await firebaseProvider.userprofile(currentUserID);
      setState(() {
        name = userProfile?.name ?? 'Guest';
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        name = 'Error loading profile';
        _isLoading = false;
      });
    }
  }

  void signOut() {
    _auth.signout();
    // Add any additional logic here if needed, such as showing a confirmation message
    setState(() {
      // Update the UI after signing out
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:  Colors.green[50],
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Icon(
                  Icons.person,
                  color: Color(0xFF3D550C),
                  size: 77,
                ),
              ),



              // Display the username if available, or a loading message
              _isLoading
                  ? const CircularProgressIndicator()
                  : Text(
                name,
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF3D550C),
                ),
              ),

              const Divider(
                color: Color(0xFF3D550C),
              ),

              const SizedBox(height: 17),

              DrawerTile(
                title: 'Home',
                icon: Icons.space_dashboard_rounded,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              DrawerTile(
                title: 'About',
                icon: Icons.info,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const Track()));
                },
              ),/*
              DrawerTile(
                title: 'Weather Forecast',
                icon: Icons.cloud,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const WeatherForecast()));
                },
              ),*/
              /*DrawerTile(
                title: 'Community',
                icon: Icons.people_alt,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Community()));
                },
              ),*/
              /*DrawerTile(
                title: 'Profile',
                icon: Icons.person,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => User(uid: currentUserID)));
                },
              ),*/
              /*DrawerTile(
                title: 'Setting',
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const Setting()));
                },
              ),*/
              const Spacer(),

              DrawerTile(
                title: 'Sign Out',
                icon: Icons.logout,
                onTap: signOut,
              ),

              const SizedBox(height: 27),

            ],
          ),
        ),
      ),
    );
  }
}
