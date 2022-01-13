import 'package:flutter/material.dart';

class ConfirmateLoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ConfirmateLoginScreenState();
  }
}

class _ConfirmateLoginScreenState extends State<ConfirmateLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("confirmate_login_screen"),
      ),
      body: Center(
        child: Text("confirmate_login_screen"),
      ),
    );
  }
}
