

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class PostField extends StatelessWidget {

  final TextEditingController textController;
  final String hintText;
  final void Function()? onPressed;
  final String onPressedText;



  const PostField({super.key, required this.textController, required this.hintText, required this.onPressed, required this.onPressedText});






  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(7)),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,

      content: TextField(
        controller: textController, maxLength: 140, maxLines: 4,

        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
              borderRadius: BorderRadius.circular(12)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
              borderRadius: BorderRadius.circular(12)
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),

          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,

          counterStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),

      //action
      actions: [
        //cancel
        TextButton(onPressed: () { Navigator.pop(context); }, child: const Text('Cancel')),
        TextButton(onPressed: () { Navigator.pop(context);   onPressed!(); textController.clear(); }, child: Text(onPressedText),)
      ],






    );








  }
}
