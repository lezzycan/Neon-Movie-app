
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:neon_movies_app/common%20widgets/positioningContainer.dart';
import 'package:neon_movies_app/common%20widgets/search_input_panel.dart';
import 'package:neon_movies_app/components/masked_image.dart';
import 'package:neon_movies_app/constants.dart';
import 'package:neon_movies_app/models/movie.dart';
import 'package:neon_movies_app/screens/movie_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Future<void> show(context) async {
    await Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => const HomeScreen())));
  }
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
        child: Stack(
          children: [
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
              ),
            ),
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
              ),
            ),
            SafeArea(
              bottom: false,
              child: ListView(
                primary: true,
                children: [
                  const SizedBox(
                    height: 34,
                  ),
                  const Text(
                    'What would you\n like to watch?',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Constants.kWhiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const SearchInputPanel(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                  ),
                  const SizedBox(
                    height: 49,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      moviestitle.first,
                      style: const TextStyle(
                          color: Constants.kWhiteColor, fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 47,
                  ),
                  SizedBox(
                    height: 280,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = Constants.kMaskFirstIndex;
                        } else if (index == newMovies.length - 1) {
                          mask = Constants.kMaskLastIndex;
                        } else {
                          mask = Constants.kMaskCenter;
                        }
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 30.0 : 0,
                            ),
                            height: 180,
                            width: 175,
                            child: MaskedImage(
                              mask: mask,
                              asset: newMovies[index].moviePoster,
                            ),
                          ),
                        );
                      },
                      itemCount: newMovies.length,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      moviestitle.last,
                      style: const TextStyle(
                          color: Constants.kWhiteColor, fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    height: 280,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = Constants.kMaskFirstIndex;
                        } else if (index == upcomingMovies.length - 1) {
                          mask = Constants.kMaskLastIndex;
                        } else {
                          mask = Constants.kMaskCenter;
                        }
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 30.0 : 0,
                            ),
                            height: 180,
                            width: 175,
                            child: MaskedImage(
                              mask: mask,
                              asset: upcomingMovies[index].moviePoster,
                            ),
                          ),
                        );
                      },
                      itemCount: upcomingMovies.length,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 64,
        width: 64,
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.all(40),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Constants.kPinkColor.withOpacity(0.85),
                  Constants.kGreenColor.withOpacity(0.5),
                ])),
     
        //   height: 60,
        //   width: 60,
        //   padding: const EdgeInsets.all(4),
        //   margin: const EdgeInsets.all(40),
        //   decoration: const BoxDecoration(
        //       shape: BoxShape.circle,
        //       gradient: LinearGradient(
        //           begin: Alignment.topLeft,
        //           end: Alignment.bottomRight,
        //           colors: [
        //             Constants.kPinkColor,
        //             Constants.kGreenColor,
        //           ])),
          child: GestureDetector(
           onTap: (() {
             Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const MovieScreen()))
          );}),
            child: const Icon(Icons.add, color:Colors.white, size:35,)),
           // child: SvgPicture.asset(Constants.kIconPlus),
        //  ),
        ),
    
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GlassmorphicContainer(
        width: screenWidth,
        height: 92,
        borderRadius: 0,
        linearGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Constants.kWhiteColor.withOpacity(0.1),
              Constants.kWhiteColor.withOpacity(0.1)
            ]),
        border: 0,
        blur: 30,
        borderGradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.topCenter,
            colors: [
              Constants.kPinkColor, 
              Constants.kGreenColor]),
              child:  BottomAppBar(
                notchMargin: 4, 
                color: Colors.transparent,
                elevation: 0,
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(onPressed: (){}, 
                      icon: SvgPicture.asset(Constants.kIconHome),
                      ),
                    ),
                   //const Spacer(),
                    Expanded(
                      child: IconButton(onPressed: (){}, 
                      icon: SvgPicture.asset(Constants.kIconPlayOnTv),
                      ),
                    ),
                  // const Spacer(),
                  const Text(''),
                // const Spacer(),
                    Expanded(
                      child: IconButton(onPressed: (){}, 
                      icon: SvgPicture.asset(Constants.kIconCategories),
                      ),
                    ),
                 
                 //  const Spacer(),
                    Expanded(
                      child: IconButton(onPressed: (){}, 
                      icon: SvgPicture.asset(Constants.kIconDownload),
                      ),
                    )
                  ],
                ),
                ),
      ),
    );
  }
}
