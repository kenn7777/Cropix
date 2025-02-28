
//import 'package:cropix/pages/home.dart';
import 'package:cropix/pages/insects/aphids.dart';
import 'package:cropix/pages/insects/armyworm.dart';
import 'package:cropix/pages/insects/leafminer.dart';
import 'package:cropix/pages/insects/cutworm.dart';
import 'package:cropix/pages/insects/diamondbackmoth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';


class InsectInfo extends StatefulWidget {
  const InsectInfo({super.key});

  @override
  State<InsectInfo> createState() => _InsectInfoState();
}

class _InsectInfoState extends State<InsectInfo> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      //drawer: DrawerSide(),
      appBar: AppBar(
        title: Text('Insects Information',
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
              child: Text('Insect By Stages',style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('All insect that might appear in pechay at different stages',style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 75, 75, 75))),
            ),

            const SizedBox(height: 17),


          /*  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Seedling Stage',style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0))),
            ),*/

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
                            "https://agriculture.com.ph/wp-content/uploads/2022/02/shutterstock_1395581459.jpg",
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Aphids(),));
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
                                  'Aphids',
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
                            "https://cesaraustralia.com/wp-content/uploads/2020/12/cutworm-dorsal-line-Julia-Severi-Cesar-Australia-1536x1024.jpg"
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
                                  'Cut Worm',
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





            //const SizedBox(height: 27),



            //Vegetative Stage
           /* Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Vegetative Stage',style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0))),
            ),*/

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
                            "https://gardenerspath.com/wp-content/uploads/2021/06/Leaf-Miner-Pupa-Stage-of-Liriomyza-trifolii-768x512.jpg",
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LeafMiner(),));
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
                                  'Leaf Miner',
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
                           "https://cesaraustralia.com/wp-content/uploads/2020/11/armyworm-3-stripes-Julia-Severi-Cesar-Australia-1536x1023.jpg"
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ArmyWorm(),));
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
                                  'Army Worm',
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
               
              ],
            ),


























            //Vegetative Stage
         /*   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Flowering Stage',style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0))),
            ),*/

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
                           "https://imgs.search.brave.com/d9Dftb0AGwu2n3aGk-N_L8_oUyUPIuQm0E7i8R9eD7s/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9nYXJk/ZW5wbGFubmVyd2Vi/c2l0ZXMuYXp1cmVl/ZGdlLm5ldC9iYmgv/cGVzdHMvZXUvRElB/TTMuanBn"
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
                                  'DiamondBack Moth',
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
                        border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        /*image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                          "https://imgs.search.brave.com/vc6acizdPPwLU6rWO2jynbpMvY9ATWsNfi-0WA3lafA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9nYXJk/ZW5lcnNwYXRoLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MS8wNy9XaGl0ZWZs/aWVzLUluZmVzdGlu/Zy1hLUxlYWYuanBn"
                          ),
                        ),*/
                       /* boxShadow: const [
                          BoxShadow(
                            // color: Color(0xFF3D550C), // color of shadow
                            //spreadRadius: 0, // spread radius
                            // blurRadius: 2, // blur radius
                            //   offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],*/
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              /*child: TextButton(
                                onPressed: () async {
                                  //remove onboarding screens
                                  final pres = await SharedPreferences.getInstance();
                                  pres.setBool("onboarding", true);

                                  //after press the get started this onboarding become true

                                  if(!mounted)return;
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const WhiteFlies(),));
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

                              /*  child: Text(
                                  'Whiteflies',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),*/

                              ),*/

                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 17),
               /* Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [








                  ],
                ),*/
              ],
            ),






            const SizedBox(height: 27),





























          ],

        ),

      ),




























    );
  }




}
