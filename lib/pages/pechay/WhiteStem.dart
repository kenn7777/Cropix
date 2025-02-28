
import 'package:cropix/pages/cultivationguide.dart';
import 'package:cropix/pages/insects/aphids.dart';
import 'package:cropix/pages/insects/cutworm.dart';
import 'package:cropix/pages/insects/diamondbackmoth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';


class WhiteStem extends StatefulWidget {
  const WhiteStem({super.key});

  @override
  State<WhiteStem> createState() => _WhiteStemState();
}

class _WhiteStemState extends State<WhiteStem> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      //drawer: DrawerSide(),
      appBar: AppBar(
        title: Text('Cultivation Guide',
          style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w700,
            color: const Color(0xFF3D550C),
        ),
        ),
        backgroundColor: Colors.grey[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            // Insect By Stages
            const SizedBox(height: 27),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Pechay By Stages',style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Guide on growing pechay at different stages',style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 75, 75, 75))),
            ),

            const SizedBox(height: 17),


        
      const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            color: Color(0xFF3D550C),
            thickness: 1,            // Thickness of the divider
          ),
        ),







             
            Container(
              height: 140,
              decoration: BoxDecoration(
                color:   const Color(0xFFE8F5E9),
                borderRadius: BorderRadius.circular(7),
               // border: Border.all(color: const Color(0xFF3D550C))
                boxShadow: const [
                  BoxShadow(
                   color: Color(0xFF3D550C), // color of shadow
                    spreadRadius: 0, // spread radius
                   //blurRadius: 1, // blur radius
                   offset: Offset(0, 1), // changes position of shadow
                  ),
               ],
              ),
              margin: const EdgeInsets.symmetric(horizontal: 14),
              padding: const EdgeInsets.all(4),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const SizedBox(width: 7),

                        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Text('Pre-Seedling',style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0))),
            ),

                        const SizedBox(width: 7),
                       
                   
                     
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 17),
                          SvgPicture.asset('images/gardening.svg', height: 77),
                          const SizedBox(height: 17),
                      
                        ],
                      ),
                                                const SizedBox(width: 27),

                    ],
                  ),

                
                ],
              ),
            ),








            const SizedBox(height: 17),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [



Container(
  height: 177,
  width: 177,
  decoration: BoxDecoration(
    border: Border.all(color: const Color(0xFF3D550C)),
    color: Colors.grey[100],
    borderRadius: BorderRadius.circular(7),
    image: const DecorationImage(
      fit: BoxFit.cover,
      image: NetworkImage(
        "https://th.bing.com/th/id/OIP.trnqiTisKgwldjyDBSq4IwHaE8?rs=1&pid=ImgDetMain",
      ),
    ),
    boxShadow: const [
      // Uncomment the BoxShadow if needed
      // BoxShadow(
      //   color: Color(0xFF3D550C), // color of shadow
      //   spreadRadius: 0, // spread radius
      //   blurRadius: 2, // blur radius
      //   offset: Offset(0, 2), // changes position of shadow
      // ),
    ],
  ),
  child: Stack(
    children: <Widget>[
      Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4),
              bottomRight: Radius.circular(4),
            ),
          ),
          child: Column(
            children: [
              Text(
                'Choose the right soil.',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                //textAlign: TextAlign.center,
              ),
              TextButton(
                onPressed: () async {
                  //remove onboarding screens
                  final pres = await SharedPreferences.getInstance();
                  pres.setBool("onboarding", true);

                  //after press the get started this onboarding become true

                  if (!mounted) return;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Aphids(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(4),
                    ),
                  ),
                ),
                child: Text(
                  'Read More',
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 2, 58, 118),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  //textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),

                  



                    Container(
                      height: 177,
                      width: 177,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF3D550C)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://imgs.search.brave.com/Mn6q2GEceiulIpCSowv9sY9X-d6imfI7sJ4gcVwQA0s/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/ZmFtaWx5aGFuZHlt/YW4uY29tL3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDE5LzAzL3No/dXR0ZXJzdG9ja18x/MDE1MDQzNzM0Lmpw/Zw"
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            // color: Color(0xFF3D550C), // color of shadow
                            //spreadRadius: 0, // spread radius
                            // blurRadius: 2, // blur radius
                            //   offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  //remove onboarding screens
                                  final pres = await SharedPreferences.getInstance();
                                  pres.setBool("onboarding", true);

                                  //after press the get started this onboarding become true

                                  if(!mounted)return;
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  CutWorm(),));
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                  ),
                                ),

                                child: Text(
                                  'Cutworm',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                              ),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),







                const SizedBox(height: 17),
              /*  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [



                    Container(
                      height: 177,
                      width: 177,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://imgs.search.brave.com/os3hpFZhSAH5AHPH0wIoHuddYMqAZzScDq6J_ZxceiA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTU0/OTYyMjcxL3Bob3Rv/L2FwaGlkcy1saWNl/LXBlc3QtaW5mZXN0/YXRpb24uanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPWtIR19R/Rkg5dGZiaVpkQ0g1/cDlYWWtHR0tKQ3hV/UHcwNVgwX2hpSlFU/UDg9",
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFF3D550C), // color of shadow
                            spreadRadius: 0, // spread radius
                            blurRadius: 2, // blur radius
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: const Text(
                                'Aphids',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
























                  ],
                ), */
              ],
            ),


     const SizedBox(height: 7),
   const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            color: Color(0xFF3D550C),
            thickness: 1,            // Thickness of the divider
          ),
        ),

            const SizedBox(height: 7),
     Container(
              height: 140,
              decoration: BoxDecoration(
                color:   const Color  (0xFFE8F5E9),
                borderRadius: BorderRadius.circular(7),
               // border: Border.all(color: const Color(0xFF3D550C))
                boxShadow: const [
                  BoxShadow(
                   color: Color(0xFF3D550C), // color of shadow
                    spreadRadius: 0, // spread radius
                   //blurRadius: 1, // blur radius
                   offset: Offset(0, 1), // changes position of shadow
                  ),
               ],
              ),
              margin: const EdgeInsets.symmetric(horizontal: 14),
              padding: const EdgeInsets.all(4),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const SizedBox(width: 7),

                        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Text('Seedling',style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0))),
            ),

                        const SizedBox(width: 7),
                       
                   
                     
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 17),
                          SvgPicture.asset('images/seed.svg', height: 77),
                          const SizedBox(height: 17),
                      
                        ],
                      ),
                                                const SizedBox(width: 27),

                    ],
                  ),

                
                ],
              ),
            ),


       

            const SizedBox(height: 27),



            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [




                    Container(
                      height: 177,
                      width: 177,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF3D550C)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://imgs.search.brave.com/8_v_nZYvlnVOcxwRo6eJJj7KZ6Zyh7or_nAPuXjzRAk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wZXN0/d2l6YXJkLmNvbS9j/ZG4vc2hvcC9maWxl/cy9QV0s1MzVmbGVh/YmVldGxlYWR1bHQu/S2F0amFTY2h1bHou/anBnP2Zvcm1hdD1w/anBnJnY9MTY4OTE5/NTk2MyZ3aWR0aD17/d2lkdGh9",
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            // color: Color(0xFF3D550C), // color of shadow
                            //spreadRadius: 0, // spread radius
                            // blurRadius: 2, // blur radius
                            //   offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  //remove onboarding screens
                                  final pres = await SharedPreferences.getInstance();
                                  pres.setBool("onboarding", true);

                                  //after press the get started this onboarding become true

                                  if(!mounted)return;
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  DiamondBackMoth(),));
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                  ),
                                ),

                                child: Text(
                                  'Flea Beetles',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                              ),

                            ),
                          ),
                        ],
                      ),
                    ),



                    Container(
                      height: 177,
                      width: 177,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF3D550C)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                           "https://imgs.search.brave.com/D3N62wwGSYF_t5eWsVesKumHJJ_HQ658uEXZBL1AC74/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9nYXJk/ZW5lcnNwYXRoLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MC8xMS9DbG9zZS11/cC1vZi1hLUNhYmJh/Z2UtTG9vcGVyLW9u/LWEtTGVhZi5qcGc"
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            // color: Color(0xFF3D550C), // color of shadow
                            //spreadRadius: 0, // spread radius
                            // blurRadius: 2, // blur radius
                            //   offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  //remove onboarding screens
                                  final pres = await SharedPreferences.getInstance();
                                  pres.setBool("onboarding", true);

                                  //after press the get started this onboarding become true

                                  if(!mounted)return;
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DiamondBackMoth(),));
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                  ),
                                ),

                                child: Text(
                                  'Cabbage Looper',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                              ),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 17),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

























                  ],
                ),
              ],
            ),




   const SizedBox(height: 27),

      Container(
              height: 140,
              decoration: BoxDecoration(
                color:   Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(7),
               // border: Border.all(color: const Color(0xFF3D550C))
                boxShadow: const [
                  BoxShadow(
                   color: Color(0xFF3D550C), // color of shadow
                    spreadRadius: 0, // spread radius
                   //blurRadius: 1, // blur radius
                   offset: Offset(0, 1), // changes position of shadow
                  ),
               ],
              ),
              margin: const EdgeInsets.symmetric(horizontal: 14),
              padding: const EdgeInsets.all(4),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const SizedBox(width: 7),

                        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Text('Vegetative',style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0))),
            ),

                        const SizedBox(width: 7),
                       
                   
                     
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 17),
                          SvgPicture.asset('images/vegetative.svg', height: 77),
                          const SizedBox(height: 17),
                      
                        ],
                      ),
                                                const SizedBox(width: 27),

                    ],
                  ),

                
                ],
              ),
            ),

    const SizedBox(width: 27),





            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [




                    Container(
                      height: 177,
                      width: 177,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF3D550C)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://imgs.search.brave.com/8_v_nZYvlnVOcxwRo6eJJj7KZ6Zyh7or_nAPuXjzRAk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wZXN0/d2l6YXJkLmNvbS9j/ZG4vc2hvcC9maWxl/cy9QV0s1MzVmbGVh/YmVldGxlYWR1bHQu/S2F0amFTY2h1bHou/anBnP2Zvcm1hdD1w/anBnJnY9MTY4OTE5/NTk2MyZ3aWR0aD17/d2lkdGh9",
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            // color: Color(0xFF3D550C), // color of shadow
                            //spreadRadius: 0, // spread radius
                            // blurRadius: 2, // blur radius
                            //   offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  //remove onboarding screens
                                  final pres = await SharedPreferences.getInstance();
                                  pres.setBool("onboarding", true);

                                  //after press the get started this onboarding become true

                                  if(!mounted)return;
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  DiamondBackMoth(),));
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                  ),
                                ),

                                child: Text(
                                  'Flea Beetles',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                              ),

                            ),
                          ),
                        ],
                      ),
                    ),



                    Container(
                      height: 177,
                      width: 177,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF3D550C)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                           "https://imgs.search.brave.com/D3N62wwGSYF_t5eWsVesKumHJJ_HQ658uEXZBL1AC74/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9nYXJk/ZW5lcnNwYXRoLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MC8xMS9DbG9zZS11/cC1vZi1hLUNhYmJh/Z2UtTG9vcGVyLW9u/LWEtTGVhZi5qcGc"
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            // color: Color(0xFF3D550C), // color of shadow
                            //spreadRadius: 0, // spread radius
                            // blurRadius: 2, // blur radius
                            //   offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  //remove onboarding screens
                                  final pres = await SharedPreferences.getInstance();
                                  pres.setBool("onboarding", true);

                                  //after press the get started this onboarding become true

                                  if(!mounted)return;
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DiamondBackMoth(),));
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                  ),
                                ),

                                child: Text(
                                  'Cabbage Looper',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                              ),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 17),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

























                  ],
                ),
              ],
            ),





















           const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            color: Color(0xFF3D550C),
            thickness: 1,            // Thickness of the divider
          ),
        ),

            const SizedBox(height: 27),
     Container(
              height: 140,
              decoration: BoxDecoration(
                color:   Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(7),
               // border: Border.all(color: const Color(0xFF3D550C))
                boxShadow: const [
                  BoxShadow(
                   color: Color(0xFF3D550C), // color of shadow
                    spreadRadius: 0, // spread radius
                   //blurRadius: 1, // blur radius
                   offset: Offset(0, 1), // changes position of shadow
                  ),
               ],
              ),
              margin: const EdgeInsets.symmetric(horizontal: 14),
              padding: const EdgeInsets.all(4),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const SizedBox(width: 7),

                        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Text('Flowering',style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0))),
            ),

                        const SizedBox(width: 7),
                       
                   
                     
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 17),
                          SvgPicture.asset('images/flowering.svg', height: 77),
                          const SizedBox(height: 17),
                      
                        ],
                      ),
                                                const SizedBox(width: 27),

                    ],
                  ),

                
                ],
              ),
            ),


       

            const SizedBox(height: 27),



            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [




                    Container(
                      height: 177,
                      width: 177,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF3D550C)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                           "https://imgs.search.brave.com/9eFDPJm1RTsi3jG6eE-gKzq8YkRJuQ7N3CcEDjI7mX0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/Z2FyZGVuZGVzaWdu/LmNvbS9waWN0dXJl/cy9pbWFnZXMvNjAw/eDQyMEV4YWN0XzY4/eDAvZHJlYW0tdGVh/bS1zLXBvcnRsYW5k/LWdhcmRlbl82L21l/YWx5YnVncy1vbi1z/dGVtLW1lYWx5YnVn/cy1zaHV0dGVyc3Rv/Y2stY29tXzE2NjIw/LmpwZw"
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            // color: Color(0xFF3D550C), // color of shadow
                            //spreadRadius: 0, // spread radius
                            // blurRadius: 2, // blur radius
                            //   offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  //remove onboarding screens
                                  final pres = await SharedPreferences.getInstance();
                                  pres.setBool("onboarding", true);

                                  //after press the get started this onboarding become true

                                  if(!mounted)return;
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DiamondBackMoth(),));
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                  ),
                                ),

                                child: Text(
                                  'Mealybugs',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                              ),

                            ),
                          ),
                        ],
                      ),
                    ),



                    Container(
                      height: 177,
                      width: 177,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF3D550C)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                          "https://imgs.search.brave.com/vc6acizdPPwLU6rWO2jynbpMvY9ATWsNfi-0WA3lafA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9nYXJk/ZW5lcnNwYXRoLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MS8wNy9XaGl0ZWZs/aWVzLUluZmVzdGlu/Zy1hLUxlYWYuanBn"
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            // color: Color(0xFF3D550C), // color of shadow
                            //spreadRadius: 0, // spread radius
                            // blurRadius: 2, // blur radius
                            //   offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  //remove onboarding screens
                                  final pres = await SharedPreferences.getInstance();
                                  pres.setBool("onboarding", true);

                                  //after press the get started this onboarding become true

                                  if(!mounted)return;
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CultivationGuide(),));
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                  ),
                                ),

                                child: Text(
                                  'Whiteflies',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                              ),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 17),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [








                  ],
                ),
              ],
            ),





   const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            color: Color(0xFF3D550C),
            thickness: 1,            // Thickness of the divider
          ),
        ),

            const SizedBox(height: 27),
     Container(
              height: 140,
              decoration: BoxDecoration(
                color:   const Color(0xFFE8F5E9),
                borderRadius: BorderRadius.circular(7),
               // border: Border.all(color: const Color(0xFF3D550C))
                boxShadow: const [
                  BoxShadow(
                   color: Color(0xFF3D550C), // color of shadow
                    spreadRadius: 0, // spread radius
                   //blurRadius: 1, // blur radius
                   offset: Offset(0, 1), // changes position of shadow
                  ),
               ],
              ),
              margin: const EdgeInsets.symmetric(horizontal: 14),
              padding: const EdgeInsets.all(4),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const SizedBox(width: 7),

                        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Text('Harvest',style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0))),
            ),

                        const SizedBox(width: 7),
                       
                   
                     
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 17),
                          SvgPicture.asset('images/harvest.svg', height: 77),
                          const SizedBox(height: 17),
                      
                        ],
                      ),
                                                const SizedBox(width: 27),

                    ],
                  ),

                
                ],
              ),
            ),


       

            const SizedBox(height: 27),




            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [




                    Container(
                      height: 177,
                      width: 177,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF3D550C)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                           "https://imgs.search.brave.com/QGI8HP4FrK5jDfM1rIGHm9922pl1yRL6rH-Znk1RKNw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQw/MTY1NDA0MC9waG90/by93ZWV2aWwuanBn/P3M9NjEyeDYxMiZ3/PTAmaz0yMCZjPTk4/czRKc1JEVUliMXFk/RDhzZHBjbmNMN2hy/cDBubkxuc3pPSm16/YkRqS2s9"
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            // color: Color(0xFF3D550C), // color of shadow
                            //spreadRadius: 0, // spread radius
                            // blurRadius: 2, // blur radius
                            //   offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  //remove onboarding screens
                                  final pres = await SharedPreferences.getInstance();
                                  pres.setBool("onboarding", true);

                                  //after press the get started this onboarding become true

                                  if(!mounted)return;
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DiamondBackMoth(),));
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                  ),
                                ),

                                child: Text(
                                  'Weevil',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                              ),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 17),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [


/*
                    Container(
                      height: 177,
                      width: 177,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://imgs.search.brave.com/os3hpFZhSAH5AHPH0wIoHuddYMqAZzScDq6J_ZxceiA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTU0/OTYyMjcxL3Bob3Rv/L2FwaGlkcy1saWNl/LXBlc3QtaW5mZXN0/YXRpb24uanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPWtIR19R/Rkg5dGZiaVpkQ0g1/cDlYWWtHR0tKQ3hV/UHcwNVgwX2hpSlFU/UDg9",
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFF3D550C), // color of shadow
                            spreadRadius: 0, // spread radius
                            blurRadius: 2, // blur radius
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: Text(
                                'Aphids',
                                style: GoogleFonts.dmSerifText(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

*/




















                  ],
                ),
              ],
            ),























          ],

        ),

      ),




























    );
  }




}
