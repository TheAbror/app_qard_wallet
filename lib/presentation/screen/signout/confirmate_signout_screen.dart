import 'package:flutter/material.dart';

class ConfirmateSignOutScreen extends StatefulWidget {
  static const routeName = "/signout/confirmate";

  const ConfirmateSignOutScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ConfirmateSignOutScreenState();
  }
}

class _ConfirmateSignOutScreenState extends State<ConfirmateSignOutScreen> {
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
