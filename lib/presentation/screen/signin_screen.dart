import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = "/signin";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignInScreenState();
  }
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("signin_screen"),
      ),
      body: const Center(
        child: Text("signin_screen"),
      ),
    );
  }
}
