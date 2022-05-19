import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_intership/screens/home.dart';
import 'package:flutter_intership/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => const Home(),
        Login.id: (context) => const Login(),
      },
      home: Scaffold(
        body: AnimatedSplashScreen(
          splash: Container(
            height: 75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/resoluteAI_logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          duration: 1500,
          nextScreen: Home(),
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),
    );
  }
}
