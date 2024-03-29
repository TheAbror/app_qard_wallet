import 'package:flutter/material.dart';
import 'package:qard_wallet/domain/model/auth/signup.dart';
import 'package:qard_wallet/presentation/bloc/auth_bloc.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = "/signup";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignUpScreenState();
  }
}

class _SignUpScreenState extends State<SignUpScreen> {

  late GlobalKey<FormState> _formKey;
  late AuthBloc _bloc;

  late String? _firstName;
  late String? _lastName;
  late String? _alias;
  late DateTime? _birthday;
  late String? _phoneNumber;
  late String? _email;

  String? _onValidate(String? value) {

  }

  void _onSave() {

    final Signup signup = Signup(
        'Ana', 'Tapia', 'Malefica', '1993-08-14',
        'atapia@qardgroup.com', '+584123345678');

    _bloc.signup(signup);

    //Navigator.pushNamed(context, SignUpConfirmationScreen.routeName);
  }

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _bloc = AuthBloc();
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
                Text("SignUp",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  obscureText: false,
                  validator: _onValidate,
                  onSaved: (value) => _firstName = value,
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
                    labelText: 'First Name',
                    labelStyle: Theme.of(context).textTheme.bodyText1,
                    hintText: 'Write your first name',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: false,
                  validator: _onValidate,
                  onSaved: (value) => _lastName = value,
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
                      labelText: 'Last Name',
                      labelStyle: Theme.of(context).textTheme.bodyText1,
                      hintText: 'Write your last name',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: false,
                  validator: _onValidate,
                  onSaved: (value) => _alias = value,
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
                      labelText: 'Alias',
                      labelStyle: Theme.of(context).textTheme.bodyText1,
                      hintText: 'Write your alias',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: false,
                  validator: _onValidate,
                  onSaved: (value) => _birthday = DateTime.now(),
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
                      labelText: 'Birthday',
                      labelStyle: Theme.of(context).textTheme.bodyText1,
                      hintText: 'Write your birthday',
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
                      labelText: 'Phone Number',
                      labelStyle: Theme.of(context).textTheme.bodyText1,
                      hintText: 'Write your phone number',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: false,
                  validator: _onValidate,
                  onSaved: (value) => _email = value,
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
                    labelText: 'Email',
                    labelStyle: Theme.of(context).textTheme.bodyText1,
                    hintText: 'Write your email',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: _onSave,
                  child: Text(
                    'Save',
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
