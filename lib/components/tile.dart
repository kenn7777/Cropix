
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Tile extends StatelessWidget {
  final String Function()? onTap;
  final String imagePath;
  const Tile({super.key, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(14),color: Colors.white),
        child: Image.asset(imagePath,height: 47,),
      
      ),
    );
  }
}



class DrawerTile extends StatelessWidget {

  final String title;
  final IconData icon;
  final void Function()? onTap;


  const DrawerTile({super.key, required this.title, required this.icon, required this.onTap });

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(title,style: GoogleFonts.poppins(fontSize: 17,  fontWeight: FontWeight.w500, color: const Color(0xFF3D550C)),),
      leading: Icon(icon,color: const Color(0xFF3D550C),),
      onTap: onTap,
    );
  }
}


class SettingTile extends StatelessWidget {
  final String title;
  final Widget action;
  const SettingTile({super.key, required this.title, required this.action,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(left: 25, right: 25, top: 10),

      padding: const EdgeInsets.all(25),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
          action,
        ],
      ),
    );
  }
}



