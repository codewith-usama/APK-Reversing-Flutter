import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'screens/myHomePage.dart';

void main() {
  runApp(const MyApp());
}

enum PageTransitionType {
  fade,
  rightToLeft,
  leftToRight,
  upToDown,
  downToUp,
  scale,
  rotate,
  size,
  rightToLeftWithFade,
  leftToRightWithFade,
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // colorScheme: ColorScheme.fromSwatch().copyWith(
        //   // primary: const Color(0xFF221C34),
        // ),
        scaffoldBackgroundColor: const Color(0xFF221C34),
      ),
      home: AnimatedSplashScreen(
        splash: 'images/back.png',
        backgroundColor: const Color(0xFF221C34),
        splashTransition: SplashTransition.scaleTransition,
        splashIconSize: 250.0,
        duration: 1000,
        nextScreen: const MyHomePage(),
      ),
    );
  }
}
