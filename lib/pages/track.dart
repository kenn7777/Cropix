import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:syncfusion_flutter_calendar/calendar.dart';



class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}




class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.white,
      //drawer: DrawerSide(),
      appBar: AppBar(
        title: Text('Track',
          style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w700,
            color: const Color(0xFF3D550C),
        ),
        ),
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}


