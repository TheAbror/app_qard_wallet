import 'package:flutter/material.dart';

class SuccsessForgotPasswordScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SuccsessForgotPasswordScreenState();
  }
}

class _SuccsessForgotPasswordScreenState
    extends State<SuccsessForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("succsess_forgot_password_screen"),
      ),
      body: Center(
        child: Text("succsess_forgot_password_screen"),
      ),
    );
  }
}
