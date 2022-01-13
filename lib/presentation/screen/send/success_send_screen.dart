import 'package:flutter/material.dart';

class SuccessSendScreen extends StatefulWidget {
  static const routeName = "/send/success";

  const SuccessSendScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SuccessSendScreenState();
  }
}

class _SuccessSendScreenState extends State<SuccessSendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("success_send_screen"),
      ),
      body: Center(
        child: Text("success_send_screen"),
      ),
    );
  }
}
