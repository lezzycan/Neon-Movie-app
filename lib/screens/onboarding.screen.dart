import 'dart:ui';

import "package:flutter/material.dart";
import 'package:neon_movies_app/components/custom_outline.dart';
import 'package:neon_movies_app/constants.dart';
import 'package:neon_movies_app/screens/home_screen.dart';

import '../common widgets/positioningContainer.dart';
import '../constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
           PositioningContainer(
            top: screenHeight * 0.1,
            left: -88, 
            color1: Constants.kPinkColor, 
            height: 166, 
            width: 166, 
            sigmaX: 166, 
            sigmaY: 166, 
            child:  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                    height: 166,
                    width: 166,
                  ),),
          
            PositioningContainer(
              top: screenHeight * 0.3, 
              right: -100,
              color1: Constants.kGreenColor, 
              height: 200, 
              width: 300, 
              sigmaX: 200, 
              sigmaY: 200, 
              child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xAB09FBD3),
                    ),
                    height: 200,
                    width: 300,
                  ),),
           
            // ),

            SafeArea(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.07,
                    ),
                    CustomOutline(
                      strokeWidth: 4,
                      padding: const EdgeInsets.all(4),
                      radius: screenWidth * 0.8,
                      width: screenWidth * 0.8,
                      height: screenWidth * 0.8,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Constants.kPinkColor,
                          Constants.kPinkColor.withOpacity(0),
                          Constants.kGreenColor,
                          Constants.kGreenColor.withOpacity(0),
                        ],
                        stops: const [0.2, 0.4, 0.6, 1],
                      ),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/image81.png'),
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomLeft,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.09,
                    ),
                    Text(
                      'Watch movies in\n Virtual Reality',
                      style: TextStyle(
                        fontSize: screenHeight <= 667 ? 18 : 34,
                        fontWeight: FontWeight.w700,
                        color: Constants.kWhiteColor.withOpacity(0.85),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    Text(
                      'Download and watch offline\n wherever you are',
                      style: TextStyle(
                        fontSize: screenHeight <= 667 ? 12 : 22,
                        fontWeight: FontWeight.w700,
                        color: Constants.kWhiteColor.withOpacity(0.875),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    CustomOutline(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Constants.kPinkColor,
                          Constants.kGreenColor,
                        ],
                      ),
                      height: 38,
                      width: 180,
                      padding: const EdgeInsets.all(3),
                      strokeWidth: 3,
                      radius: 20,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Constants.kPinkColor.withOpacity(0.5),
                              Constants.kGreenColor.withOpacity(0.5),
                            ],
                          ),
                        ),
                        child: InkWell(
                          onTap: () => HomeScreen.show(context),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 14, color: Constants.kWhiteColor),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          return Container(
                            width: 7,
                            height: 7,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index == 0
                                  ? Constants.kGreenColor
                                  : Constants.kWhiteColor.withOpacity(0.2),
                            ),
                          );
                        })),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    //   ],
    // ),
  }
}

