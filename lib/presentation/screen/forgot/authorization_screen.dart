import 'package:flutter/material.dart';

class AuthorizationScreen extends StatefulWidget {
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
