import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ArmyWorm extends StatefulWidget {
  const ArmyWorm({super.key});

  @override
  State<ArmyWorm> createState() => _ArmyWormState();
}

class _ArmyWormState extends State<ArmyWorm> {
  final List<String> armyworm = [
    'images/armyworm-lines.jpg',
    'images/Armyworm-1.jpg',

  ];














  String ScientificName = 'Spodoptera spp.';
  String Description = 'Army worms are the larvae of several species of moths, primarily the fall armyworm (*Spodoptera frugiperda*) and the true armyworm (*Pseudaletia unipuncta*). They are characterized by their green to brown coloration, with stripes along their bodies.';
  String LifeCycle = 'The life cycle includes egg, larval (caterpillar), pupal, and adult stages. The larvae are voracious feeders and can cause significant damage to crops.\n';
  String Cause = 'Army worms feed on a wide variety of plants, particularly grasses and grains. They can defoliate plants rapidly, leading to severe crop losses. Their feeding can create large patches of dead or dying plants, resembling an army moving through a field..';
  String PreventiveMeasures =      'Remove infested parts of the plant.\n'
  'Apply neem oil or insecticidal soap.\n'
  'Use natural predators like parasitoid wasps.\n';










  // to bisaya
  void changeText() {
    setState(() {

      ScientificName = 'siyantifko';
      Description = 'Army worms are the larvae of several species of moths, primarily the fall armyworm (*Spodoptera frugiperda*) and the true armyworm (*Pseudaletia unipuncta*). They are characterized by their green to brown coloration, with stripes along their bodies.';
      LifeCycle = 'sad';
      Cause = 'Tungod ani ug ana';
      PreventiveMeasures = 'bisayaaaaaaaaaaaaa';

    });
  }

  //to english
  void resetText() {
    setState(() {
      ScientificName = 'Planococcus spp.';
      Description = 'Army worms are the larvae of several species of moths, primarily the fall armyworm (*Spodoptera frugiperda*) and the true armyworm (*Pseudaletia unipuncta*). They are characterized by their green to brown coloration, with stripes along their bodies.';
      LifeCycle = 'Females lay eggs in cottony masses; nymphs develop into adults in about 4-6 weeks.\n';
      Cause = 'Suck sap, causing yellowing and wilting of leaves.';
      PreventiveMeasures =      'Remove infested parts of the plant.\n'
          'Apply neem oil or insecticidal soap.\n'
          'Use natural predators like parasitoid wasps.\n';

    });
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Army Worm',
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
              items: armyworm.map((item) => Container(
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
