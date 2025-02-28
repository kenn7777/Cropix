
//User Post


import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String id; // id of this post
  final String uid; // uid of the poster
  final String name;  // name of the poster
  final String username;  // username of the poster
  final String post; // message of the post
  final Timestamp timestamp; // timestamp of the post
  final int likecount; // like count of this post
  final List<String> likedby; // liked by user id


  Post({
    required this.id,
    required this.uid,
    required this.name,
    required this.username,
    required this.post,
    required this.timestamp,
    required this.likecount,
    required this.likedby,



  });

  // convert a firestore document to a post object(to use in our app)

  factory Post.fromDocument(DocumentSnapshot doc) {
    return Post(
      id: doc.id,
      uid: doc['uid'],
      name: doc['name'],
      username: doc['username'],
      post: doc['post'],
      timestamp: doc['timestamp'],
      likecount: doc['likecount'],
      likedby: List<String>.from(doc['likedby'] ?? []),
    );
  }

  // convert a post object to a map (to store in firebase)


  Map<String, dynamic> toMap(){
    return {
      'uid': uid,
      'name': name,
      'username': username,
      'post': post,
      'timestamp': timestamp,
      'likes': likecount,
      'likedby': likedby,

    };
  }








}