import 'package:flutter/material.dart';

class SuccessCreateAccountScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SuccessCreateAccountScreenState();
  }
}

class _SuccessCreateAccountScreenState
    extends State<SuccessCreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("succsess_create_account_screen"),
      ),
      body: Center(
        child: Text("succsess_create_account_screen"),
      ),
    );
  }
}
