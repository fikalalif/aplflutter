import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled5/constant/colors.dart';
import 'package:untitled5/screens/login_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
          ),
          Positioned(
              child: Container(
            child: Image.asset(
                'assets/images/backgrounds/get_started/onboarding.png'),
          )),
          Positioned(
              top: 408,
              right: 0,
              left: 0,
              child: Stack(
                children: [
                  Container(
                    child: Image.asset(
                        'assets/images/backgrounds/get_started/container.png'),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 24, top: 24, right: 24, bottom: 108),
                      child: Column(
                        children: [
                          Text(
                            "Cultivating Health, \nOne Plant at \na Time!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sora(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Welcome to a world where plant health meets technology, for a greener tomorrow.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                            height: 56,
                            width: 327,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.green900,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16))),
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                    (route) => false);
                              },
                              child: Text(
                                "Get Started",
                                style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
