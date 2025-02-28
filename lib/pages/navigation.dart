/*import 'package:cropix/pages/home.dart';
import 'package:cropix/pages/track.dart';
import 'package:cropix/pages/user.dart';
import 'package:flutter/material.dart';

import '../authentication/auth.dart';


//access auth

final _auth = Auth();


class Navigation extends StatefulWidget {
  const Navigation({super.key});



  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  final List<Widget> pages = [
    const Home(),
    const Track(),
   // const User(uid: _auth.getCurrentUID()),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(

          onTap: onTap,
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          selectedItemColor: const Color(0xFF3D550C),
          unselectedItemColor: Colors.green.withOpacity(0.5),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,

                ),
                label: 'Home',

            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.track_changes_outlined,

                ),
                label: 'Track'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profile'
            ),


          ]),


    );
  }
}
*/