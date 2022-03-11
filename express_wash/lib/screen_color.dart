import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

/*class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  /*final  _bottomNavigationBarItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.star)),
  ];*/

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Express Wash vous souhaite la bienvenue",
              body:
                  "Profitez d'un service de lavage de qualité\navec Express Wash",
              image: buildImage('assets/assist.png'),
            ),
            PageViewModel(
              title: "Express Wash vous souhaite la bienvenue",
              body:
                  "Profitez d'un service de lavage de qualité\navec Express Wash",
              image: buildImage('assets/assist.png'),
            )
          ],
          done:
              const Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () {},
        ),
      );
  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        //descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Color(0xFFFAFAFA),
      );
}*/

class NextHomepage extends StatelessWidget {
  const NextHomepage({Key? key}) : super(key: key);

  Widget buildImage(String path) =>
    Center(child: Image.asset(path, width: 350));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Express Wash vous souhaite la bienvenue",
              body:
                  "Profitez d'un service de lavage de qualité\navec Express Wash",
              image: buildImage('assets/assist.png'),
            ),
            PageViewModel(
              title: "Express Wash vous souhaite la bienvenue",
              body:
                  "Profitez d'un service de lavage de qualité\navec Express Wash",
              image: buildImage('assets/assist.png'),
            )
          ],
          done:
              const Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () {},
        ),
      ),
    );
  }
}
