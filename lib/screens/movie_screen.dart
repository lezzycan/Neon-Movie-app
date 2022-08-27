import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_movies_app/components/custom_outline.dart';
import 'package:neon_movies_app/constants.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
       body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color(0xFF19191b)
            ])
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: screenHeight * 0.5,
                width: screenWidth,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/movie-posters/img-eternals.jpg'))
                ),
              ),
              ),
              Positioned(
                top: screenHeight * 0.05,
                left: 0,
                right: 0,   
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        padding:const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 3,
                            color: Colors.white
                          )
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: SvgPicture.asset(Constants.kIconBack))),
                      const Spacer(),
                      Container(
                         height: 44,
                        width: 44,
                        padding:const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 3,
                            color: Colors.white
                          )
                        ),
                        child: SvgPicture.asset(Constants.kIconMenu))
                    ],
                  ),),),
              Positioned(
                top: screenHeight * 0.42,
                right: 9,
               // left: 0,
                child:  Container(
                  height: 60,
                  width: 60,
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFfe53bb),
                        Color(0xFF09fbd3)
                      ])
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constants.kGreyColor
                    ),
                    child:const Icon(Icons.play_arrow, color: Constants.kWhiteColor,)),
                ),
       ),
       Positioned(
        left: 0,
        bottom: 0,
        right: 0,
        child: Container(
          height: screenHeight * 0.5,
          transform: Matrix4.translationValues(0, -screenHeight*0.5, 0),
        ) 
        ),
       ],
       ) ,   
          
        ),
       
    );
  }
}