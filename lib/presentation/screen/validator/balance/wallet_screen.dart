import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  static const routeName = "/balance/wallet";

  const WalletScreen({Key? key}) : super(key: key);

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
