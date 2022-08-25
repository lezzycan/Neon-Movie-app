import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neon_movies_app/common%20widgets/positioningContainer.dart';
import 'package:neon_movies_app/common%20widgets/search_input_panel.dart';
import 'package:neon_movies_app/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Future<void> show(context) async {
    await Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => const HomeScreen())));
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(children: [
          PositioningContainer(
            top: -100,
            left: -100,
            color1: Constants.kGreenColor.withOpacity(0.5),
            height: 200,
            width: 200,
            sigmaX: 200,
            sigmaY: 200,
            child: Container(
              color: Colors.transparent,
              height: 200,
              width: 200,
            ),
          ),
          PositioningContainer(
            top: screenHeight * 0.4,
            right: -88,
            color1: Constants.kPinkColor.withOpacity(0.5), 
            height: 166, 
            width: 166, 
            sigmaX: 166, 
            sigmaY: 166, 
            child: Container(
              color: Colors.transparent,
              height: 200,
              width: 200,
            ),),
             PositioningContainer(
            bottom: -100,
            left: -100,
            color1: Constants.kCyanColor.withOpacity(0.5), 
            height: 200, 
            width: 200, 
            sigmaX: 200, 
            sigmaY: 200, 
            child: Container(
              color: Colors.transparent,
              height: 200,
              width: 200,
            ),),
            SafeArea(
              bottom: false,
              child: ListView(
                primary: true,
                children: const[
                  SizedBox(height: 24 ,),
                  Text('What would you\n like to watch?',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Constants.kWhiteColor,   
                  ),
                  textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30 ,),
                  SearchInputPanel(
                    padding: EdgeInsets.symmetric(horizontal: 20.0))
                ],
                
                ),
                ),
        ],
        ),
      ),
    );
  }
}
