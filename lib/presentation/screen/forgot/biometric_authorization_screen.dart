import 'package:flutter/material.dart';

class BiometricAuthorizationScreen extends StatefulWidget {
  static const routeName = "/forgot_password/auth/biometric";

  const BiometricAuthorizationScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BiometricAuthorizationScreenState();
  }
}

class _BiometricAuthorizationScreenState
    extends State<BiometricAuthorizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("biometric_authorization_screen"),
      ),
      body: Center(
        child: Text("biometric_authorization_screen"),
      ),
    );
  }
}
