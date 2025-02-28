
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:cropix/pages/cultivationguide.dart';
import 'package:cropix/pages/track.dart';
import 'package:cropix/pages/weatherforecast.dart';
import 'package:cropix/weatherapi/weather_model.dart';
import 'package:cropix/weatherapi/weather_service.dart';
import 'package:cropix/components/drawer.dart';
import 'package:cropix/pages/insectinfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cropix/components/button.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {








    //api
    final _weatherservice = WeatherService('2fc8c40dab5587563cd8f6fe1515d684');
    WeatherModel? _weather;

    _fetchWeather() async {
      String cityName = await _weatherservice.getCurrentCity();

      try {
        final weather = await _weatherservice.getWeather(cityName);
        setState(() {
          _weather = weather;
        });
      }

      catch (e) {
        print(e);
      }

    }

    //weatheranimations
    String getWeatherAnimation(String? mainCondition) {
      if(mainCondition == null) return 'images/weathersunny.json';

      switch (mainCondition.toLowerCase()) {
        case 'clouds':
        case 'mist':
        case 'smoke':
        case 'haze':
        case 'dust':
        case 'fog':
          return 'images/weathercloud.json';
        case 'rain':
        case 'drizzle':
        case 'shower rain':
          return 'images/weatherthunderstorm.json';
        case 'thunderstorm':
          return 'images/weatherthunderstorm.json';
        case 'clear':
          return 'images/weatherclear.json';
        default:
          return 'images/weathersunny.json';

      }
    }



    @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _fetchWeather();
  }



  int currentPage = 0;


File? _image; // To hold the captured image
  final ImagePicker _picker = ImagePicker();

 Future<void> _openCamera() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      }
    } catch (e) {
      print("Error accessing camera: $e");
    }
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),







         drawer: DrawerSide(),
         appBar: AppBar(
        
        foregroundColor: const Color(0xFF3D550C),

        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text('                Cropix',style: GoogleFonts.dmSerifText(fontSize: 24,  fontWeight: FontWeight.bold,  color: const Color(0xFF3D550C))),

      ),






// add divider after of appbar with padding 







        body: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
          
          
                 const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: Color(0xFF3D550C),
              thickness: 1,            // Thickness of the divider
            ),
          ),
          
          
          
              const SizedBox(height: 17),
          
          
          
          
          //Weather forecast
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text("Today's  Weather",style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w500,  color: const Color.fromARGB(255, 0, 0, 0)),),
              ),
          
          
              const SizedBox(height: 7),
          
              //Weather forecast
          
                   Container(
                    height: 100,
               decoration:  BoxDecoration(
                 color:   Colors.green[50],
                 borderRadius: BorderRadius.circular(170),
                 border: Border.all(color: const Color(0xFF3D550C))
               ),
                margin:  const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.all(27),
          
          
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
          
                        Text(_weather?.cityname ?? "loading location...",style: GoogleFonts.poppins(color: const Color.fromARGB(
                            255, 0, 0, 0), fontWeight: FontWeight.w400, fontSize: 14), ),
          
          
                        Text(_weather?.mainCondtion ?? "", style: GoogleFonts.poppins(color: const Color.fromARGB(255, 3, 75, 15), fontWeight: FontWeight.bold, fontSize: 14),),
                         
          
                      ],
                    ),
                            const SizedBox(width: 27),
          
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
          
                            Text("${_weather?.temperature.round()}°C",style: GoogleFonts.poppins(color: const Color.fromARGB(
                               255, 0, 0, 0), fontWeight: FontWeight.w400, fontSize: 17),),
                            const SizedBox(width: 11),
          
                            Lottie.asset(getWeatherAnimation(_weather?.mainCondtion),width: 70,height: 70,),
          
                          ],
                        ),
                      ],
                      
          
          
          
                      
                  
                ),
          
          
          
              ),
          
           
           
          
          
              const SizedBox(height: 14),
          
          
              /*Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the Weather Forecast page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const WeatherForecast()),
                        );
                      },
                      child: Text('View Weather Forecast',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF3D550C),
                          decoration: TextDecoration.underline, // Add underline here
                        ),
                      ),
                    ),
                  ],
                ),
              ),*/
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
              // Insect Classification
              const SizedBox(height: 27),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text('Insect Pests Classification',style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w500,  color: const Color.fromARGB(255, 0, 0, 0))),
              ),
          
              const SizedBox(height: 7),
          
          
          
               //Insect Classification
              Container(
                height: 207,
                decoration: BoxDecoration(
                  color:   const Color(0xFFE8F5E9),
                  borderRadius: BorderRadius.circular(14),
                 // border: Border.all(color: const Color(0xFF3D550C))
                  boxShadow: const [
                    BoxShadow(
                     color: Color(0xFF3D550C), // color of shadow
                      spreadRadius: 0, // spread radius
                    blurRadius: 2, // blur radius
                     offset: Offset(0, 2), // changes position of shadow
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
                      const SizedBox(width: 37),
          
                        Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 17),
                            SvgPicture.asset('images/insectarget.svg', height: 57),
                            const SizedBox(height: 17),
                            
          
                            Text(
                              '    Take\n'
                                  ' picture',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                //fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
          
                          const SizedBox(width: 7),
                           Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //const SizedBox(height: 7),
                            Image.asset('images/chevron.png', height: 24),
                            const SizedBox(height: 27),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 17),
                            SvgPicture.asset('images/phoneinfo.svg', height: 57),
                            const SizedBox(height: 17),
                            Text(
                              '      See\n'
                                  'Information',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                           Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //const SizedBox(height: 17),
                            Image.asset('images/chevron.png', height: 24),
                            const SizedBox(height: 27),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 17),
                            SvgPicture.asset('images/insecticide.svg', height: 57),
                            const SizedBox(height: 17),
                            Text(
                              '    Get '
                               '\nInsecticide',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                                                  const SizedBox(width: 27),
          
                      ],
                    ),
                    const SizedBox(height: 12),
          
                    ImageButton(
                          onTap: _openCamera,
                    ),
                  ],
                ),
              ),
          
          
          
          
          
          
          
          
          
          
          
          
          
              //Cropix Information
              const SizedBox(height: 17),
          
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                     Container(
                        height: 107,
                        width: 167,
                        decoration: BoxDecoration(
                          //color: Colors.grey[100],
                          color:   Colors.green[50],
                          borderRadius: BorderRadius.circular(4),
                            boxShadow: const [
                            BoxShadow(
                              color: Color(0xFF3D550C), // color of shadow
                              spreadRadius: 0, // spread radius
                              blurRadius: 1, // blur radius
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
          
          
          
          
                        Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset('images/pechayinfo.svg', height: 37),
                                TextButton(
                                    onPressed: () async {
                                      //remove onboarding screens
                                      final pres = await SharedPreferences.getInstance();
                                      pres.setBool("onboarding", true);
          
                                      //after press the get started this onboarding become true
          
                                      if(!mounted)return;
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CultivationGuide(),));
                                    },
                                    child:  Text('Cultivation\nGuide',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF3D550C),
          
                                      ),
          
                                    )),
          
                              ],
                            ),
          
                        
          
                       
          
          
          
          
          
          
          
          
          
          
          
          
                            Image.asset('images/next.png', height: 17),
                                                                      const SizedBox(height: 4),
          
                          ],
                        ),
                      ),
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
               
                     Container(
                        height: 107,
                        width: 167,
                        decoration: BoxDecoration(
                          //color: Colors.grey[100],
                          color:   Colors.green[50],
                          borderRadius: BorderRadius.circular(4),
                            boxShadow: const [
                            BoxShadow(
                              color: Color(0xFF3D550C), // color of shadow
                              spreadRadius: 0, // spread radius
                              blurRadius: 1, // blur radius
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
          
          
          
          
                        Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset('images/insectinfo.svg', height: 37),
                                TextButton(
                                    onPressed: () async {
                                      //remove onboarding screens
                                      final pres = await SharedPreferences.getInstance();
                                      pres.setBool("onboarding", true);
          
                                      //after press the get started this onboarding become true
          
                                      if(!mounted)return;
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const InsectInfo(),));
                                    },
                                    child:  Text('Insect\nInformation',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF3D550C),
          
                                      ),
          
                                    )),
          
                              ],
                            ),
          
                        
          
                       
          
          
          
          
          
          
          
          
          
          
          
          
                            Image.asset('images/next.png', height: 17),
                                                                      const SizedBox(height: 4),
          
                          ],
                        ),
                      ),
          
          
          
                    ],
                  ),
          
                                            const SizedBox(height: 14),
          
          //////////////////////////////////
          
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                     Container(
                        height: 107,
                        width: 167,
                        decoration: BoxDecoration(
                          //color: Colors.grey[100],
                          color:   Colors.green[50],
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xFF3D550C), // color of shadow
                              spreadRadius: 0, // spread radius
                              blurRadius: 1, // blur radius
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
          
          
          
          
                        Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset('images/dash.svg', height: 37),
                                TextButton(
                                    onPressed: () async {
                                      //remove onboarding screens
                                      final pres = await SharedPreferences.getInstance();
                                      pres.setBool("onboarding", true);
          
                                      //after press the get started this onboarding become true
          
                                      if(!mounted)return;
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Track(),));
                                    },
                                    child:  Text('Insect\nTracked',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF3D550C),
          
                                      ),
          
                                    )),
          
                              ],
                            ),
          
          //                      
          
                      
          
          
                            Image.asset('images/next.png', height: 17),
                                                                      const SizedBox(height: 4),
          
                          ],
                        ),
                      ),
                      
          
          
          
          
               Container(
                        height: 107,
                        width: 167,
                        decoration: BoxDecoration(
                          //color: Colors.grey[100],
                          color:   Colors.green[50],
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xFF3D550C), // color of shadow
                              spreadRadius: 0, // spread radius
                              blurRadius: 1, // blur radius
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
          
          
          
          
                        Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset('images/cloud.svg', height: 37),
                                TextButton(
                                    onPressed: () async {
                                      //remove onboarding screens
                                      final pres = await SharedPreferences.getInstance();
                                      pres.setBool("onboarding", true);
          
                                      //after press the get started this onboarding become true
          
                                      if(!mounted)return;
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const WeatherForecast(),));
                                    },
                                    child:  Text('Weather\nForecast',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF3D550C),
          
                                      ),
          
                                    )),
          
                              ],
                            ),
          
          //                      
          
                      
          
          
                            Image.asset('images/next.png', height: 17),
                                                                      const SizedBox(height: 4),
          
                          ],
                        ),
                      ),
                      
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
                    ],
                  ),
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
               
          
          
                ],
              ),
          
          
          
          
            ],
          ),
        )
    );
  }
}



