import 'package:flutter/material.dart';

class ReceiverScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ReceiverScreenState();
  }
}

class _ReceiverScreenState extends State<ReceiverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("receiver_screen"),
      ),
      body: Center(
        child: Text("receiver_screen"),
      ),
    );
  }
}
