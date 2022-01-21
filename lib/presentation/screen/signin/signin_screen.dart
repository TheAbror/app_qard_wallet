import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qard_wallet/main.dart';
import 'package:qard_wallet/presentation/screen/forgot/authorization_screen.dart';
import 'package:qard_wallet/presentation/screen/home/home_screen.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = "/signin";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignInScreenState();
  }
}

class _SignInScreenState extends State<SignInScreen> {

  late GlobalKey<FormState> _formKey;

  late String? _phoneNumber;
  late String? _email;

  String? _onValidate(String? value) {

  }

  void _onSave() {

  }

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Text("Sign In",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      minWidth: 180,
                      onPressed: () => print('hhh'),
                      child: const Text('Phone Number'),
                    ),
                    FlatButton(
                      minWidth: 180,
                      onPressed: () => print('hhh'),
                      child: const Text('Email'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: false,
                  validator: _onValidate,
                  onSaved: (value) => _phoneNumber = value,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondaryVariant,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondaryVariant,
                          width: 1.7,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1.7,
                        ),
                      ),
                      labelText: 'Phone Number',
                      labelStyle: Theme.of(context).textTheme.bodyText1,
                      hintText: 'Write your phone number',
                      //helperText: 'Make sure to use number, symbols and capital letters'
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: false,
                  validator: _onValidate,
                  onSaved: (value) => _phoneNumber = value,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondaryVariant,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondaryVariant,
                          width: 1.7,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1.7,
                        ),
                      ),
                      labelText: 'Password',
                      labelStyle: Theme.of(context).textTheme.bodyText1,
                      hintText: 'Write your password',
                      //helperText: 'Password must match'
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
                      child: Text(
                        'Login',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 1,
                        primary: Theme.of(context).colorScheme.primary,
                        minimumSize: const Size(290, 70),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
                        icon: const Icon(Icons.android),
                        color: Theme.of(context).colorScheme.secondaryVariant,
                        iconSize: 50,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 140,
                ),
                FlatButton(
                  minWidth: 180,
                  onPressed: () => Navigator.pushNamed(context, AuthorizationScreen.routeName),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(fontSize: 16,
                        color: Theme.of(context).colorScheme.secondary
                    ),
                  ),
                ),
                Image.asset('assets/images/logo.png',height: 150,),
              ],
            ),
          )
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
