import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CutWorm extends StatefulWidget {
  const CutWorm({super.key});

  @override
  State<CutWorm> createState() => _CutWormState();
}

class _CutWormState extends State<CutWorm> {
  final List<String> cutworm = [
    'images/cutworm-dorsal-line.jpg',
    'images/Cutworm-1.jpg',

  ];














  String ScientificName = 'Agrotis spp.';

  String Description = "Cutworms are the larvae of various nocturnal moths. They typically have a smooth body that is gray or brown with a velvety texture. have a single faint longitudinal midline on their ‘collar’ and body.";

  String LifeCycle = 'Eggs are laid in soil; larvae emerge and feed at night.\n'
      'Complete their life cycle in about 30-60 days.';

  String Cause = 'Cutworms primarily feed at night and cut young seedlings at the base, leading to plant loss. They may also feed on roots and stems of established plants.';


  String PreventiveMeasures =      'Remove weeds from field margins to reduce egg-laying sites and food sources for larvae.\n'
                                   'Keep the garden free of debris where larvae can hide.\n';










  // to bisaya
  void changeText() {
    setState(() {

      ScientificName = 'siyantifko';
      Description = '';
      LifeCycle = 'sad';
      Cause = 'Tungod ani ug ana';
      PreventiveMeasures = 'bisayaaaaaaaaaaaaa';

    });
  }

  //to english
  void resetText() {
    setState(() {
      ScientificName = 'Agrotis spp.';
      Description = 'Cutworms are the larvae of various nocturnal moths. They typically have a smooth body that is gray or brown with a velvety texture.';
      LifeCycle = 'Eggs are laid in soil; larvae emerge and feed at night.\n'
          'Complete their life cycle in about 30-60 days.';
      Cause = 'Cut seedlings at the base, leading to plant death.';
      PreventiveMeasures =      'Use collars made of cardboard or plastic around seedlings.\n'
          'Keep the garden free of debris where larvae can hide.\n'
          'Handpick and remove larvae.\n';

    });
  }











  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'CutWorm',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3D550C),
          ),
        ),
        backgroundColor: Colors.grey[100],
        actions: [
          IconButton(
            icon: Icon(Icons.change_circle),
            onPressed: changeText,
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: resetText,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 27),
            CarouselSlider(
              options: CarouselOptions(
                height: 270.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: cutworm.map((item) => Container(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Image.asset(item, fit: BoxFit.cover, width: 1000),
                  ),
                ),
              )).toList(),
            ),








            const SizedBox(height: 27),
            //INFORMATION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Scientific Name',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                ScientificName,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                ),
              ),
            ),

            const SizedBox(height: 17),
            //PREVENTIVE MEASURES
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Description',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                Description,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[700],
                ),
              ),
            ),
            const SizedBox(height: 17),
            //PREVENTIVE MEASURES
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Cause',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                Cause,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[700],
                ),
              ),
            ),




            const SizedBox(height: 27),
            //PREVENTIVE MEASURES
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Life Cycle',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                LifeCycle,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                ),
              ),
            ),






            const SizedBox(height: 27),
            //PREVENTIVE MEASURES
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Preventive Measures',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                PreventiveMeasures,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                ),
              ),
            ),











































          ],
        ),
      ),
    );
  }


  
}
