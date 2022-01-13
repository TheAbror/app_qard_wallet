import 'package:flutter/material.dart';

class SelectActionScreen extends StatefulWidget {
  static const routeName = "/action";

  const SelectActionScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SelectActionScreenState();
  }
}

class _SelectActionScreenState extends State<SelectActionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("select_action_screen"),
      ),
      body: Center(
        child: Text("select_action_screen"),
      ),
    );
  }
}
