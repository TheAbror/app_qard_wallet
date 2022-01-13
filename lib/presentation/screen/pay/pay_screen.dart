import 'package:flutter/material.dart';

class PayScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PayScreenState();
  }
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pay_screen"),
      ),
      body: Center(
        child: Text("pay_screen"),
      ),
    );
  }
}
