import 'package:express_wash/Splash_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:express_wash/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: AnimatedSplashScreen(splash:
       Icons.home,
       duration: 2000,
       splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.blue
       //Center(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Container(height: 200, width: 100, color: Colors.blue),
    //     Container(
    //         child: const Text('Splash Screen',
    //             style: TextStyle(
    //               fontSize: 24,
    //               fontWeight: FontWeight.bold,
    //             ))),
    //   ],
    // )
    ,nextScreen: const MyHomePage(title: 'Express Wash')),
    );
  }
}
