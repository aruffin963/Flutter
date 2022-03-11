import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:express_wash/screen_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Express Wash',
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFAFAFA)),
        home: AnimatedSplashScreen(
            splash: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Express',
                        style: TextStyle(color: Colors.black, fontSize: 30.0),
                        children: [
                          TextSpan(
                            text: 'Wash',
                            style: TextStyle(color: Colors.red, fontSize: 30.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 300.0,
                    ),
                  ],
                ),
              ),
            ),
            duration: 2000,
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: const Color(0xFFFAFAFA),
            nextScreen: const NextHomepage()),
      );
}
