import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/screen/home/home_screen.dart';
import 'presentation/screen/splash/splash_screen.dart';

void main() {
  runApp(const QardWalletApp());
}

class QardWalletApp extends StatelessWidget {

  const QardWalletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Qard Wallet',
      theme: ThemeData(
        //primaryColorDark: ,
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
