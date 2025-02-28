import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class DiamondBackMoth extends StatefulWidget {
  const DiamondBackMoth({super.key});

  @override
  State<DiamondBackMoth> createState() => _DiamondBackMothState();
}

class _DiamondBackMothState extends State<DiamondBackMoth> {
  final List<String> diamondbackmoth = [
    'images/diamondbackmoth.webp',
  

  ];














  String ScientificName = 'Plutella xylostella';
  String Description = 'Adults are small (<1/2 inch), light brown with a distinctive diamond-shaped marking on their wings.';
  String LifeCycle = 'Eggs are laid on leaf undersides; nymphs feed on sap and can develop into adults in about 4-6 weeks.\n';
  String Cause = ' Weaken plants and produce honeydew, leading to sooty mold.';
  String PreventiveMeasures =      'Rotate crops to disrupt the life cycle of diamondback moths. Avoid planting brassicas in the same area for consecutive seasons to reduce pest buildup\n'
      'Remove plant debris and weeds that can harbor larvae and serve as overwintering sites. This minimizes potential breeding grounds\n';










  // to bisaya
  void changeText() {
    setState(() {

      ScientificName = 'siyantifko';
      Description = 'Adults are small (<1/2 inch), light brown with a distinctive diamond-shaped marking on their wings.';
      LifeCycle = 'sad';
      Cause = 'Tungod ani ug ana';
      PreventiveMeasures = 'bisayaaaaaaaaaaaaa';

    });
  }

  //to english
  void resetText() {
    setState(() {
      ScientificName = 'Plutella xylostella';
      Description = 'Adults are small (<1/2 inch), light brown with a distinctive diamond-shaped marking on their wings.';
      LifeCycle = ' Adults are small (<1/2 inch), light brown with a distinctive diamond-shaped marking on their wings.\n';
      Cause = 'Caterpillars feed on foliage and flower heads, causing "windowpane" damage where only the leaf epidermis remains intact. They can also contaminate produce by pupating inside harvested crops.';
      PreventiveMeasures = 'Integrated pest management strategies are crucial due to resistance development in populations. Cultural controls include crop rotation and maintaining healthy plants';

    });
  }












  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'DiamondBack Moth',
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
              items: diamondbackmoth.map((item) => Container(
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