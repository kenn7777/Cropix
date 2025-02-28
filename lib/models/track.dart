
//User Track


import 'package:cloud_firestore/cloud_firestore.dart';

class Track {
  final String id; // id of this track
  final String uid; //uid of the user
  final String typeofinsect;
  final String typeofinsecticide;
  final String amount;
  final DateTime date;



  Track({
    required this.id,
    required this.uid,
    required this.typeofinsect,
    required this.typeofinsecticide,
    required this.amount,
    required this.date,



  });

  // convert a firestore document to a post object(to use in our app)

  factory Track.fromDocument(DocumentSnapshot doc) {
    return Track(
      id: doc.id,
      uid: doc['uid'],
      typeofinsect: doc['typeofinsect'],
      typeofinsecticide: doc['typeofinsecticide'],
      amount: doc['amount'],
      date: doc['date'],

    );
  }

  // convert a post object to a map (to store in firebase)


  Map<String, dynamic> toMap(){
    return {
      'uid': uid,
      'typeofinsect': typeofinsect,
      'typeofinsecticide': typeofinsecticide,
      'amount': amount,
      'date': date,

    };
  }








}