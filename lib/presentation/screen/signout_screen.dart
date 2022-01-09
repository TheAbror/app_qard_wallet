import 'package:flutter/material.dart';

class SignOutScreen extends StatefulWidget {
  static const routeName = "/signout";

  const SignOutScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignOutScreenState();
  }
}

class _SignOutScreenState extends State<SignOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("signout_screem"),
      ),
      body: const Center(
        child: Text("signout_screem"),
      ),
    );
  }
}
