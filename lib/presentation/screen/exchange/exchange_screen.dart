import 'package:flutter/material.dart';

class ExchangeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExchangeScreenState();
  }
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("exchange_screen"),
      ),
      body: Center(
        child: Text("exchange_screen"),
      ),
    );
  }
}
