import 'package:flutter/material.dart';

class BalanceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BalanceScreenState();
  }
}

class _BalanceScreenState extends State<BalanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("balance_screen"),
      ),
      body: Center(
        child: Text("balance_screen"),
      ),
    );
  }
}
