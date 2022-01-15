import 'package:flutter/material.dart';
import 'package:qard_wallet/main.dart';
import 'package:qard_wallet/presentation/screen/signup/terms_and_conditions_screen.dart';

class CreatePasswordScreen extends StatefulWidget {
  static const routeName = "/signup/password";

  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CreatePasswordScreenState();
  }
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {

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
                  Text("Create Password",
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
                        labelText: 'Password',
                        labelStyle: Theme.of(context).textTheme.bodyText1,
                        hintText: 'Write your password',
                        helperText: 'Make sure to use number, symbols and capital letters'
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
                        labelText: 'Confirm Password',
                        labelStyle: Theme.of(context).textTheme.bodyText1,
                        hintText: 'Repeat your password',
                        helperText: 'Password must match'
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, TermsAndConditionsScreen.routeName),
                    child: Text(
                      'Save',
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
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Exit',
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
