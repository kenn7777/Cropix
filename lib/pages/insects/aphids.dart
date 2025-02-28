import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Aphids extends StatefulWidget {
  @override
  _AphidsState createState() => _AphidsState();
}

class _AphidsState extends State<Aphids> {
  final List<String> aphids = [
    'images/aphids.webp',
    'images/aphids1.jpg',
    'images/aphids2.jpg',
  ];








  String ScientificName = 'Aphis gossypii';

   String Description = 'Aphids are small, soft-bodied insects that can be green, black, brown, or yellow. They are often found in clusters on the undersides of leaves.';

  String LifeCycle = 'Reproduce rapidly, with females giving birth to live young (viviparous).\n'
                     'Life cycle can be completed in about 7-14 days under ideal conditions.';

  String Cause = 'Suck sap from leaves, leading to wilting and stunted growth. Can also transmit plant viruses.';


  String PreventiveMeasures =  'Froth a mild soap such as Perla with water until its soapy, then use a soft and soapy bristled brush to scrub your plant free of aphids.Do note that aphids like to hide underneath leaves where it is harder to get at them. The soap solution may also be applied with a high pressure spray to dislodge their bodies, being careful that the pressure is not so strong as to damage the plants themselves.';










  // to bisaya
  void changeText() {
    setState(() {

      ScientificName = 'siyantifko';
      LifeCycle = 'sad';
      Description = 'Aphids are small, soft-bodied insects that can be green, black, brown, or yellow. They are often found in clusters on the undersides of leaves.';
      Cause = 'Tungod ani ug ana';
      PreventiveMeasures = 'Pagsamahin ang banayad na sabon tulad ng Perla sa tubig hanggang maging mabula, pagkatapos ay gumamit ng malambot at may sabon na brush upang kuskusin ang iyong halaman mula sa mga aphid. \n'
                              'Tandaan na ang mga aphid ay mahilig magtago sa ilalim ng mga dahon kung saan mahirap silang maabot. Ang solusyon ng sabon ay maaari ring ipahid gamit ang mataas na presyon ng spray upang maalis ang kanilang mga katawan, na dapat maging maingat na hindi masyadong malakas ang presyon upang hindi masira ang mga halaman.\n';

    });
  }

  //to english
  void resetText() {
    setState(() {
      ScientificName = 'Aphis gossypii';
      Description = 'Aphids are small, soft-bodied insects that can be green, black, brown, or yellow. They are often found in clusters on the undersides of leaves.';
      LifeCycle = 'Reproduce rapidly, with females giving birth to live young (viviparous).\n'
                  'Life cycle can be completed in about 7-14 days under ideal conditions.';
      Cause = 'Suck sap from leaves, leading to wilting and stunted growth. Can also transmit plant viruses.';
      PreventiveMeasures =      'Froth a mild soap such as Perla with water until its soapy, then use a soft and soapy bristled brush to scrub your plant free of aphids.Do note that aphids like to hide underneath leaves where it is harder to get at them. The soap solution may also be applied with a high pressure spray to dislodge their bodies, being careful that the pressure is not so strong as to damage the plants themselves.';

    });
  }














  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Aphids',
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
              items: aphids.map((item) => Container(
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
