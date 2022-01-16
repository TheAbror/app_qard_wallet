import 'package:flutter/material.dart';

import 'package:qard_wallet/main.dart';
import 'package:qard_wallet/presentation/screen/recover/recover_account_screen.dart';
import 'package:qard_wallet/presentation/screen/signup/signup_screen.dart';

class SelectActionScreen extends StatefulWidget {
  static const routeName = "/action";

  const SelectActionScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SelectActionScreenState();
  }
}

class _SelectActionScreenState extends State<SelectActionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width,
          height: 843,
          color: Theme.of(context).colorScheme.primaryVariant,
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Text("Select Action",
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, SignUpScreen.routeName),
                child: Text(
                  'Create Account',
                  style: Theme.of(context).textTheme.headline2,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).colorScheme.primary,
                  minimumSize: const Size.fromHeight(50),
                  padding: const EdgeInsets.all(20),
                  // NEW
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, RecoverAccountScreen.routeName),
                child: Text(
                  'Recover Account',
                  style: Theme.of(context).textTheme.headline2,
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  primary: Theme.of(context).colorScheme.primary,
                  minimumSize: const Size.fromHeight(50),
                  padding: const EdgeInsets.all(20),
                ),
              ),
              const SizedBox(
                height: 320,
              ),
              Image.asset('assets/images/logo.png', height: 150,),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(QardWalletApp.themeNotifier.value == ThemeMode.light
              ? Icons.dark_mode
              : Icons.light_mode),
          onPressed: () {
            QardWalletApp.themeNotifier.value =
            QardWalletApp.themeNotifier.value == ThemeMode.light
                ? ThemeMode.dark
                : ThemeMode.light;
          }
      ),
    );
  }
}
