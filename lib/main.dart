import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_intership/screens/counting_screen.dart';
import 'package:flutter_intership/screens/history.dart';
import 'package:flutter_intership/screens/home.dart';
import 'package:flutter_intership/screens/login.dart';
import 'package:flutter_intership/screens/main_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        Home.id: (context) => Home(),
        Login.id: (context) => Login(),
        CountingScreen.id: (context) => CountingScreen(),
        History.id: (context) => History(),
      },
      home: Scaffold(
        body: AnimatedSplashScreen(
          splash: Container(
            padding: EdgeInsets.all(20),
            height: 75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/resoluteAI_logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          duration: 1500,
          nextScreen: MainPage(),
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),
    );
  }
}
