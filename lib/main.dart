import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_movies_app/screens/onboarding.screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  overlays: [SystemUiOverlay.top]).then((_) => runApp(const MyApp())); 
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Neon Movies',
      theme: ThemeData(
       fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: const OnboardingScreen(),
    );
  }
}



