import 'package:flutter/material.dart';

void Loading (BuildContext context) {
  showDialog(context: context, builder: (context) => AlertDialog(
    backgroundColor: Colors.transparent,
    elevation: 0,
    content: Center(
      child: CircularProgressIndicator(),
    ),
  ),

  );
}

//hide

void UnLoading (BuildContext context) {
   Navigator.pop(context);
}