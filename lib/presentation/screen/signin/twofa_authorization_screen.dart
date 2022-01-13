import 'package:flutter/material.dart';

class TwofaAuthorizationScreen extends StatefulWidget {
  static const routeName = "/signin/2fa";

  const TwofaAuthorizationScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TwofaAuthorizationScreenState();
  }
}

class _TwofaAuthorizationScreenState
    extends State<TwofaAuthorizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("twofa_authorization_screen"),
      ),
      body: Center(
        child: Text("twofa_authorization_screen"),
      ),
    );
  }
}
