import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:express_wash/home.dart';
import 'login_page.dart';

/*class NextNextHomepage extends StatelessWidget {
  const NextNextHomepage({Key? key}) : super(key: key);

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

class NextHomepage extends StatefulWidget {
  const NextHomepage({Key? key}) : super(key: key);

  @override
  State<NextHomepage> createState() => _NextHomepageState();
}

class _NextHomepageState extends State<NextHomepage> {
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
              title:
                  "Avec Express Wash déposez vos vêtements en toute sécurité",
              body:
                  "Ayez confiance en votre pressing en ligne pour un lavage de qualité",
              image: buildImage('assets/del.png'),
            ),
            PageViewModel(
              title: "Express Wash dispose également d'un service de livraison",
              body:
                  "Ne vous gênez pas au moment de la récupération de vos linges.\nExpress Wash s'occupe de la livraison",
              image: buildImage('assets/deliver.png'),
            ),
            PageViewModel(
              title: "Express Wash se soucie du service rendu",
              body:
                  "Un service rendu par Express wash équivaut à un client satisfait",
              image: buildImage('assets/first.png'),
            )
          ],
          done:
              const Icon(Icons.arrow_forward),
          onDone: () => goToHome(context),
          next: const Icon(Icons.arrow_forward),
          nextFlex: 1,
        ),
      ),
    );
  }

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 10),
        imagePadding: EdgeInsets.all(24),
        pageColor: Color(0xFFFAFAFA),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LoginPage()),
      );

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: const Color(0xFFBDBDBD),
        size: const Size(10, 10),
        activeSize: const Size(10, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );
}

/*class NextNextHomepage extends StatelessWidget {
  const NextNextHomepage({Key? key}) : super(key: key);

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
}*/