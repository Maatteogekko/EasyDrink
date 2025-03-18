import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2260DD),
      body: Center(
        child: Image.asset(
          'assets/splash_logo.png',
          height: 200,
        ),
      ),
    );
  }
}
