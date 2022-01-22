import 'package:flutter/material.dart';

class ConfirmPayScreen extends StatefulWidget {
  static const routeName = "/pay/success";

  const ConfirmPayScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ConfirmPayScreenState();
  }
}

class _ConfirmPayScreenState extends State<ConfirmPayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("confirm_pay_screen"),
      ),
      body: Center(
        child: Text("confirm_pay_screen"),
      ),
    );
  }
}
