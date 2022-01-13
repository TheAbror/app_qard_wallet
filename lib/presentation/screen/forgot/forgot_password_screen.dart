import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const routeName = "/forgot_password/new";

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ForgotPasswordScreenState();
  }
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("forgot_password_screen"),
      ),
      body: Center(
        child: Text("forgot_password_screen"),
      ),
    );
  }
}
