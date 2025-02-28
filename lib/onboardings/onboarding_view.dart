
import 'package:cropix/authentication/signinup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboarding_item.dart';



class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  final controller = OnBoardingItem();
  final pageController = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //globalBackgroundColor: Color(0xFFFFFFFF),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: isLastPage? getStarted() :  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            TextButton(
                onPressed: ()=>pageController.jumpToPage(controller.items.length-1),
                child:  Text('Skip',style: GoogleFonts.poppins(color: Color(0xFF3D550C),))),

            SmoothPageIndicator(
                controller: pageController,
                count: controller.items.length,
                onDotClicked: (index)=>pageController.animateToPage(index,
                duration: const Duration(milliseconds: 600), curve: Curves.easeIn),
                effect: const WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  activeDotColor: Color(0xFF3D550C),


                ),


            ),



            TextButton(
                onPressed: ()=>pageController.nextPage(
                  duration: const Duration(milliseconds: 600),curve: Curves.easeIn),
                child:  Text('Continue',style: GoogleFonts.poppins(color: Color(0xFF3D550C),),)),


          ],
        ),
      ),


    body: Container(
  margin: const EdgeInsets.symmetric(horizontal: 7),
  color: Colors.white, // Set the background color here
  child: PageView.builder(
    onPageChanged: (index) => setState(() => isLastPage = controller.items.length - 1 == index),
    itemCount: controller.items.length,
    controller: pageController,
    itemBuilder: (context, index) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Use SvgPicture to display SVG images
          SvgPicture.asset(
            controller.items[index].image,
            height: 170, // Adjust height if needed
            width: 100,  // Adjust width if needed
          ),
          const SizedBox(height: 15),
          Text(
            controller.items[index].title,
            style: GoogleFonts.poppins(color: const Color(0xFF3D550C), fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Text(
            controller.items[index].description,
            style: GoogleFonts.poppins(color: Colors.grey, fontSize: 17),
            textAlign: TextAlign.center,
          ),
        ],
      );
    },
  ),
),


    );
}









  Widget getStarted() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: const Color(0xFF3D550C),
      ),
      width: MediaQuery.of(context).size.width * .9,
      height: 55,
      child: TextButton(
        onPressed: () async {
          // Store that onboarding has been completed
          final prefs = await SharedPreferences.getInstance();
          prefs.setBool("onboarding", true);

          // After pressing "Get Started", navigate to SignInUp
          if (!mounted) return;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignInUp()),
          );
        },
        child: Text(
          'Get Started',
          style: GoogleFonts.poppins(color: Colors.white),
        ),
      ),
    );
  }





}
