import 'package:flutter/material.dart';
import 'package:qard_wallet/main.dart';

class ConfirmateSignOutScreen extends StatefulWidget {
  static const routeName = "/signout/confirmate";

  const ConfirmateSignOutScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ConfirmateSignOutScreenState();
  }
}

class _ConfirmateSignOutScreenState extends State<ConfirmateSignOutScreen> {

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
            height: MediaQuery.of(context).size.height,
            color: Theme.of(context).colorScheme.primaryVariant,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Text("Confirmate Login",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    obscureText: false,
                    validator: _onValidate,
                    onSaved: (value) => _phoneNumber = value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1.7,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1.7,
                        ),
                      ),
                      helperText: 'Just For Demo.',
                      labelText: 'Phone Number',
                      labelStyle: Theme.of(context).textTheme.bodyText1,
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
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1.7,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1.7,
                        ),
                      ),
                      helperText: 'Just For Demo.',
                      labelText: 'Email',
                      labelStyle: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, ConfirmateSignOutScreen.routeName),
                    child: Text(
                      'Next',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 1,
                      primary: Theme.of(context).colorScheme.primary,
                      minimumSize: const Size.fromHeight(50),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Back',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 1,
                      primary: Theme.of(context).colorScheme.primary,
                      minimumSize: const Size.fromHeight(50),
                      //padding: const EdgeInsets.all(20),
                    ),
                  ),
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
