import 'package:flutter/material.dart';

class RecoverAccountScreen extends StatefulWidget {
  static const routeName = "/recover";

  const RecoverAccountScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RecoverAccountScreenState();
  }
}

class _RecoverAccountScreenState extends State<RecoverAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("recover_account_screen"),
      ),
      body: Center(
        child: Text("recover_account_screen"),
      ),
    );
  }
}
