
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LeafMiner extends StatefulWidget {
  const LeafMiner({super.key});

  @override
  State<LeafMiner> createState() => _LeafMinerState();
}

class _LeafMinerState extends State<LeafMiner> {
  final List<String> leafminer = [
    'images/leafminer.webp',

  ];














  String ScientificName = 'Liriomyza spp.';
  String Description = 'Leaf miners are small flies whose larvae burrow into leaves, creating distinctive winding tunnels or mines within the leaf tissue.';
  String LifeCycle = ' The life cycle consists of egg, larval (mining), pupal, and adult stages. The adult flies lay eggs on the leaf surface..\n';
  String Cause = 'The mining activity disrupts photosynthesis and can lead to leaf drop. Heavy infestations can reduce crop yield significantly.';
  String  PreventiveMeasures =      'Avoid planting a new crop susceptible to leafminers immediately after the harvest of an older one; leave 1-2 weeks for pupae in the soil to hatch.\n'
  'Use Bacillus thuringiensis (Bt) as a biological control.\n';
 










  // to bisaya
  void changeText() {
    setState(() {

      ScientificName = 'siyantifko';
      Description = "";
      LifeCycle = 'sad';
      Cause = 'Tungod ani ug ana';
      PreventiveMeasures = 'bisayaaaaaaaaaaaaa';

    });
  }

  //to english
  void resetText() {
    setState(() {
      ScientificName = 'Liriomyza spp.';
      Description = "Cutworms are the larvae of various nocturnal moths. They typically have a smooth body that is gray or brown with a velvety texture.";
      LifeCycle = 'The life cycle consists of egg, larval (mining), pupal, and adult stages. The adult flies lay eggs on the leaf surface..\n';
      Cause = 'The mining activity disrupts photosynthesis and can lead to leaf drop. Heavy infestations can reduce crop yield significantly.';
      PreventiveMeasures = 'Monitoring for adult flies using yellow sticky traps, removing infested leaves, and using insecticides targeted at the larval stage can help manage populations.';

    });
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Leaf Miner',
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
              items: leafminer.map((item) => Container(
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
