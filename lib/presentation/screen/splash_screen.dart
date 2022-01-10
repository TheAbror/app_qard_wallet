import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {

  void _goToHome() {
    Navigator.pushNamed(context, HomeScreen.routeName);
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), _goToHome);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png'),
                  const Text('Cargando...'),
                ],
              )
          ),
        )
    );
  }
}
