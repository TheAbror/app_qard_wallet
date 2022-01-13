import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WalletScreenState();
  }
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wallet_screen"),
      ),
      body: Center(
        child: Text("wallet_screen"),
      ),
    );
  }
}
