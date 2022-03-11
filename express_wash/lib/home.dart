import 'package:flutter/material.dart';

class Screenwhite extends StatelessWidget {
  const Screenwhite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color((0xFFFAFAFA)),
    );
  }
}

class Screenred extends StatelessWidget {
  const Screenred({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color((0xFFE81010)),
    );
  }
}