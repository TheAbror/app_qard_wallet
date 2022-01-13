import 'package:flutter/material.dart';

class SendScreen extends StatefulWidget {
  static const routeName = "/send";

  const SendScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SendScreenState();
  }
}

class _SendScreenState extends State<SendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("send_screen"),
      ),
      body: Center(
        child: Text("send_screen"),
      ),
    );
  }
}
