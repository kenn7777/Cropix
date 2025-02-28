
import 'dart:developer';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cropix/authentication/auth.dart';
import 'package:cropix/models/post.dart';
import 'package:cropix/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/track.dart';




// handles datas of users

class FirebaseService {

  final _firebase = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

   //after register, store details to database and display to profile page.


    //Save User Info

    Future<void> SaveUserInfoInFirebase({required String name, required String email}) async {
      // get current uid
      String uid = _auth.currentUser!.uid;


      // get username from email
      String username = email.split('@')[0];



      //create user profile
      UserProfile user = UserProfile(uid: uid, name: name, email: email, username: username, bio: '');



      //convert user into a map to store in firebase
      final UserMap = user.toMap();


      //save user info in firebase
      await _firebase.collection("Users").doc(uid).set(UserMap);

    }

    //Get User Info

    Future<UserProfile?> GetUserFromFirebase(String uid) async {

      try {

         DocumentSnapshot UserDoc = await _firebase.collection("Users").doc(uid).get();


         //convert doc to user profile
         return UserProfile.fromDocument(UserDoc);


      }catch (e){
        print(e);
        return null;

      }

    }


    //Update Bio

    Future<void> UpdateUserBioInFirebase(String bio) async {
      //get current user
      String uid = Auth().getCurrentUID();


      //attempt to update in firebase

       try {
         await _firebase.collection("Users").doc(uid).update({'bio': bio});

       }
       catch (e) {
            print(e);
       }

















    }

    // Post


  //Create Post
  Future<void> PostInFirebase(String post) async {
    try {
      String uid = _auth.currentUser!.uid;

      UserProfile? user = await GetUserFromFirebase(uid);

      Post newPost = Post(
        id: '',
        uid: uid,
        name: user!.name,
        username: user.username,
        post: post,
        timestamp: Timestamp.now(),
        likecount: 0,
        likedby: [],
      );



      //convert post object -> map

      Map<String, dynamic> newPostMap = newPost.toMap();

      //add to firebase
      await _firebase.collection("Posts").add(newPostMap);
    }
    catch (e) {

      print(e);

    }




  }




  //Display All Posts
  Future<List<Post>> GetAllPostsFromFirebase() async {

    try{
      QuerySnapshot snapshot = await _firebase
      // go to post collection
          .collection("Posts")
      //chronological order
          .orderBy('timestamp', descending: true)
      //display posts
          .get();

      //return as a posts list
      return snapshot.docs.map((doc) => Post.fromDocument(doc)).toList();

    }catch (e) {
      return [];
    }
  }

































  //Create Track In Firebase
  Future<void> TrackInFirebase(String typeofinsect, String typeofinsecticide, String amount) async {
    try {
      String uid = _auth.currentUser!.uid;

      UserProfile? user = await GetUserFromFirebase(uid);

      Track newTrack = Track(
          id: '',
          uid: uid,
          typeofinsect: typeofinsect,
          typeofinsecticide: typeofinsecticide,
          amount: amount,
          date: DateTime.now()
      );



      //convert post object -> map

      Map<String, dynamic> newTrackMap = newTrack.toMap();

      //add to firebase
      await _firebase.collection("Track").add(newTrackMap);
    }
    catch (e) {

      print(e);

    }




  }
















}