


import 'package:flutter/material.dart';






class Bio extends StatelessWidget {

  final String text;

  const Bio({super.key, required this.text});


  @override
  Widget build(BuildContext context) {

    //
    return Container(

      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(14)
      ),

        //inside
       padding: const EdgeInsets.all(25),
        //outside
       margin: const EdgeInsets.symmetric(horizontal: 25),

       child: Text(
           text.isNotEmpty ? text : 'Add Bio',
           style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
       ),








    );
  }
}
