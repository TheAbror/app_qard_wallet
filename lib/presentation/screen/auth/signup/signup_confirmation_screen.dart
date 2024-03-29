import 'package:flutter/material.dart';
import 'package:qard_wallet/presentation/screen/auth/signup/password_creation_screen.dart';
import 'package:qard_wallet/presentation/screen/auth/signup/signup_modification_screen.dart';

class SignUpConfirmationScreen extends StatefulWidget {
  static const routeName = "/signup/confirmation";

  const SignUpConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignUpConfirmationScreenState();
  }
}

class _SignUpConfirmationScreenState extends State<SignUpConfirmationScreen> {

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
            height: 860,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Text("Confirmate SignUp",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'You Phone Number: +584128811350',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
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
                          labelText: 'Confirm Phone Number',
                          labelStyle: Theme.of(context).textTheme.bodyText1,
                          hintText: 'Write your code'
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: const Text('60',),
                          ),
                          FlatButton(
                            onPressed: () => print('hhh'), child: Text('Send Code'),)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'You Email: brayanmartinez827@gmail.com',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
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
                          labelText: 'Confirm Email',
                          labelStyle: Theme.of(context).textTheme.bodyText1,
                          hintText:  'Write your code'
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: const Text('60',),
                          ),
                          FlatButton(
                            onPressed: () => print('hhh'), child: const Text('Send Code'),)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, CreatePasswordScreen.routeName),
                    child: Text(
                      'Confirm',
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
                    onPressed: () => Navigator.pushNamed(context, SignUpModificationScreen.routeName),
                    child: Text(
                      'Modify',
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
                      'Exit',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 1,
                      primary: Theme.of(context).colorScheme.primary,
                      minimumSize: const Size.fromHeight(50),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }

}
