import 'package:flutter/material.dart';

class AuthorizationScreen extends StatefulWidget {
  static const routeName = "/forgot_password/auth";

  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AuthorizationScreenState();
  }
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("authorization_screen"),
      ),
      body: Center(
        child: Text("authorization_screen"),
      ),
    );
  }
}
