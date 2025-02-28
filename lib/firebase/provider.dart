import 'dart:developer';

import 'package:cropix/authentication/auth.dart';
import 'package:cropix/models/post.dart';
import 'package:cropix/models/user.dart';
import 'package:flutter/foundation.dart';
import 'package:cropix/firebase/service.dart';




/*
   provider class process the data to display in pages.
*/


class FirebaseProvider extends ChangeNotifier {

   //final _auth = Auth();
   final _service = FirebaseService();



   //UserProfile

   //Get User Details given UID

   Future<UserProfile?> userprofile(String uid) => _service.GetUserFromFirebase(uid);


    // Update User Bio
   Future<void> updatebio(String bio) => _service.UpdateUserBioInFirebase(bio);

   // Post
   //local list of post
   List<Post> _allposts = [];

   // get posts
   List<Post> get allposts => _allposts;

   //post
   Future<void> createpost(String post) async {
      //post in firebase
      await _service.PostInFirebase(post);

      await loadallposts();

   }






   // display posts
   Future<void> loadallposts() async {
      // display posts from firebase
      final allposts = await _service.GetAllPostsFromFirebase();

      _allposts = allposts;

      //update local data
      notifyListeners();

   }




















   // Track
   //local list of post
   List<Post> _alltracks = [];

   // get posts
   List<Post> get alltracks => _alltracks;

   //post
   Future<void> createTract(String typeofinsect, String typeofinsecticide, String amount) async {
      //post in firebase
       await _service.TrackInFirebase(typeofinsect, typeofinsecticide, amount);

   }













}