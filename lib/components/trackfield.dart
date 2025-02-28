import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TrackField extends StatelessWidget {
  final TextEditingController typeofInsect;
  final TextEditingController typeofInsecticide;
  final TextEditingController amount;
  //final String hintText;
  final void Function()? onPressed;
  final String onPressedText;

  const TrackField({
    super.key,
    required this.typeofInsect,
    required this.typeofInsecticide,
    required this.amount,
    //required this.hintText,
    required this.onPressed,
    required this.onPressedText,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(7)),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Type of insect
          TextField(
            controller: typeofInsect,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: 'Type of Insect',
              hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
              fillColor: Theme.of(context).colorScheme.secondary,
              filled: true,
            ),
          ),
          const SizedBox(height: 10),

          // Type of insecticide
          TextField(
            controller: typeofInsecticide,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: 'Type of Insecticide',
              hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
              fillColor: Theme.of(context).colorScheme.secondary,
              filled: true,
            ),
          ),
          const SizedBox(height: 10),

          // Amount
          TextField(
            controller: amount,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: 'Amount',
              hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
              fillColor: Theme.of(context).colorScheme.secondary,
              filled: true,
            ),
          ),
          const SizedBox(height: 10),

          // Date
         /* TextField(
            controller: date,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: 'Date',
              hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
              fillColor: Theme.of(context).colorScheme.secondary,
              filled: true,
            ),
          ), */
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            onPressed!();
            typeofInsect.clear();
            typeofInsecticide.clear();
            amount.clear();
          },
          child: Text(onPressedText),
        ),
      ],
    );
  }
}
