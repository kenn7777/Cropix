

import 'package:cropix/authentication/auth.dart';
import 'package:cropix/components/bio.dart';
import 'package:cropix/components/biofield.dart';
import 'package:cropix/firebase/provider.dart';
//import 'package:cropix/firebase/service.dart';
import 'package:cropix/models/user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class User extends StatefulWidget {

  final String uid;

  const User({super.key, required this.uid});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {

  //provider
  late final firebaseprovider = Provider.of<FirebaseProvider>(context, listen: false);

  //user info
  UserProfile? user;
  String currentUserID = Auth().getCurrentUID();

  //loading...
  bool _isloading = true;

  //on start up
  @override
  void initState() {
    super.initState();

    //load user info
    loaduser();

  }

  Future<void> loaduser() async {
    //get the user info

    user = await firebaseprovider.userprofile(widget.uid);

    //finished loading...
    setState(() {
      _isloading = false;

    });
  }



  //update bio
  final biocontroller = TextEditingController();

  void updatebio() {
    showDialog(context: context, builder: (context) => BioField(textController: biocontroller, hintText: 'Bio...', onPressed: savebio, onPressedText: 'Save'));
  }


  //Save Updated Bio
  Future<void> savebio() async {
    setState(() {
      _isloading = true;
    });

    await firebaseprovider.updatebio(biocontroller.text);

    await loaduser();

    setState(() {
      _isloading = false;
    });

    print('savinggg...');
  }
















  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',
          style: GoogleFonts.dmSerifText(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3D550C),
          ),
        ),




        backgroundColor: Colors.grey[100],
      ),


      body: ListView(
          children: [

            const SizedBox(height: 27),
            //username
            Center(
              child: Text(
                _isloading? '' : '@${user!.username}',
                style: GoogleFonts.dmSerifText(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF3D550C),
                ),
              ),
            ),

            const SizedBox(height: 17),

            Center(
              child: Container(
                decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary, borderRadius: BorderRadius.circular(17)),
                padding: EdgeInsets.all(25),
                child: Icon(Icons.person, size: 72, color: Theme.of(context).colorScheme.primary,),
              ),
            ),

            const SizedBox(height: 27),


             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                //EdgeInsets.symmetric(horizontal: 25),
               children: [
                 Text('Bio',style: TextStyle(color: Theme.of(context).colorScheme.primary),
                 ),
                 GestureDetector(
                   onTap: updatebio,
                   child: Icon(Icons.mode_edit_outline_rounded, color: Theme.of(context).colorScheme.primary,),
                 )
               ],
             ),




            const SizedBox(height: 27),

             //bio
            Bio(text: _isloading ? '...' : user!.bio),















          ],
        ),
      );
  }
}
