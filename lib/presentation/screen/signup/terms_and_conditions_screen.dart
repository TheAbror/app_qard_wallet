import 'package:flutter/material.dart';
import 'package:qard_wallet/main.dart';
import 'package:qard_wallet/presentation/commons/link.dart';
import 'package:qard_wallet/presentation/screen/home/home_screen.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  static const routeName = "/signup/terms_and_conditions";

  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TermsAndConditionsScreenState();
  }
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width,
          height: 1000,
          color: Theme.of(context).colorScheme.primaryVariant,
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Text("Terms and Conditions",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset('assets/images/terms-and-conditions.png'),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Read our ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Link(
                    child: Text(
                      'Privacy Policy.',
                      style: TextStyle(fontSize: 20,
                        color: Theme.of(context).colorScheme.secondary
                      ),
                    ),
                    url: 'http://www.google.com',
                    onError: () => print('Error...')
                  ),
                  const Text(
                    ' Tap "Agree and continue" ',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'to accept the ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Link(
                    child: Text(
                      'Terms of Service.',
                        style: TextStyle(fontSize: 20,
                        color: Theme.of(context).colorScheme.secondary
                      ),
                    ),
                    url: 'http://www.google.com',
                    onError: () => print('Error...')
                  ),
                ],
              ),
              const SizedBox(
                height: 90,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
                child: Text(
                  'Agree And Continue',
                  style: Theme.of(context).textTheme.headline2,
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  primary: Theme.of(context).colorScheme.primary,
                  minimumSize: const Size.fromHeight(50),
                  //padding: const EdgeInsets.all(20),
                ),
              ),
              const SizedBox(
                height: 140,
              ),
              Image.asset('assets/images/logo.png',height: 150,),
            ],
          ),
        )
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
