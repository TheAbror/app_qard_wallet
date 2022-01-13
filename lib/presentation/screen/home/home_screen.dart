import 'package:flutter/material.dart';
import 'package:qard_wallet/main.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          'Flutter Demo Home Page',
          style: Theme.of(context).textTheme.headline1,
        ),
        elevation: Theme.of(context).appBarTheme.elevation,
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryVariant,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(50, 0, 0, 0),
                blurRadius: 3,   // soften the shadow
                spreadRadius: 0, //extend the shadow
                offset: Offset(
                  -0.1, // Move to right 10  horizontally
                  0,    // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
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
            _incrementCounter();
          }
      ),
    );
  }
}
