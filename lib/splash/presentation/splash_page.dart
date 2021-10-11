import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2260DD),
      body: Center(
        child: Image.asset('assets/splash_logo.png'),
      ),
    );
  }
}
